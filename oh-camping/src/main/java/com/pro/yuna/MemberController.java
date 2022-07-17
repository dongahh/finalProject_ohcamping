package com.pro.yuna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MemberController {
	
	@Autowired
	private CampMemberDAO dao;
	
	// 회원가입
	@RequestMapping("camp_join.do")
	public String join() {		
		return "member/member_join";
	}
	
	
	@RequestMapping("member_id_check.do")
	public void content(@RequestParam("id") String user_id, 
			HttpServletResponse response) throws IOException{
		
		int res = this.dao.campIdCheck(user_id);
		
		response.setContentType("text/html; charset=UTF-8");		
		PrintWriter out = response.getWriter();
		
		if (res == 0) {
			out.println("0");
		}else {
			out.println("1"); // 아이디 중복
		}
		
		System.out.println("res : " + res);

	}
	
	
	@RequestMapping("camp_join_ok.do")
	public void joinMember(@RequestParam("mem_phone1") String mem_phone1,
			@RequestParam("mem_phone2") String mem_phone2,
			@RequestParam("mem_phone3") String mem_phone3,
			CampMemberDTO dto,
			HttpServletResponse response)  throws IOException {		
		
		String mem_phone = mem_phone1+"-"+mem_phone2+"-"+mem_phone3;
		
		dto.setMem_phone(mem_phone);
		int check = this.dao.joinCampMember(dto);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('환영합니다! 새로운 아이디로 로그인 해주세요')");
			out.println("location.href='camp_main.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('회원가입에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	// 회원가입 관련 끝
	
	
	// 로그인
	@RequestMapping("camp_login.do")
	public String login() {		
		return "member/member_login";
	}
	
	
	// 로그아웃
	@RequestMapping("camp_logout.do")
	public String login(HttpServletRequest request, HttpServletResponse response) {		
		HttpSession session = request.getSession();
		session.invalidate();
		return "main";
	}
		
	
	@RequestMapping("camp_find_password.do")
	public String findPwd() {
		return "member/member_find_pwd";
	}
	
	
	@RequestMapping("camp_find_password_ok.do")
	public String findPwdOk(@RequestParam("mem_id") String mem_id, 
			@RequestParam("mem_email") String mem_email, Model model, 
			HttpServletResponse response) throws IOException {
		
		int res = this.dao.memberEmailCheck(mem_id, mem_email);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String pwd = "";
		if (res > 0) {
			// 회원인 경우
			pwd = dao.getCampMemberPassword(mem_id);
			model.addAttribute("findPwd", pwd);
			return "member/member_find_pwd_res"; // 페이지로 이동		
		}else if (res == -1) {
			// 이메일이 틀린 경우
			out.println("<script>");
			out.println("alert('이메일을 확인해주세요')");
			out.println("history.back()");
			out.println("</script>");
		}else if(res == 0){
			// 회원이 아닌 경우(아이디가 없거나 아이디가 틀린 경우
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디 입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return "member/member_find_pwd";
	} // camp_find_password_ok.do
	
	
	@RequestMapping("camp_login_ok.do")
	public void loginMember(@RequestParam("mem_id") String mem_id,
			@RequestParam("mem_pwd") String mem_pwd, CampMemberDTO dto, 
			HttpServletRequest request,
			HttpServletResponse response, HttpSession session)  throws IOException {	
		
		int check = dao.loginCampMember(mem_id, mem_pwd);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		session = request.getSession();
		
		if (check > 0) {
			// 회원인 경우
			dto = dao.getMember(mem_id);
			session.setAttribute("memName", dto.getMem_name());
			session.setAttribute("sessionID", dto.getMem_id());
			response.sendRedirect("camp_main.do");
		}else if (check == -1) {
			// 비밀번호가 틀린 경우
			out.println("<script>");
			out.println("alert('비밀번호를 확인해주세요')");
			out.println("history.back()");
			out.println("</script>");
		}else if(check == 0){
			// 회원이 아닌 경우(아이디가 없거나 아이디가 틀린 경우)
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디 입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
}
