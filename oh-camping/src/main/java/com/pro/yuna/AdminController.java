package com.pro.yuna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@Autowired
	private CampAdminDAO dao;
	
	@RequestMapping("camp_admin_login.do")
	public String admin() {		
		return "admin/admin_login";
	}
	
	
	@RequestMapping("camp_admin_login_ok.do")
	public void loginAdmin(@RequestParam("admin_id") String admin_id,
			@RequestParam("admin_pwd") String admin_pwd, CampAdminDTO dto, 
			HttpServletRequest request,
			HttpServletResponse response, HttpSession session)  throws IOException {	
		
		int check = dao.adminLogin(admin_id, admin_pwd);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		session = request.getSession();
		
		if (check > 0) {
			// 회원인 경우
			dto = dao.getAdmin(admin_id);
			session.setAttribute("adminName", dto.getAdmin_name());
			session.setAttribute("sessionID", dto.getAdmin_id());
			response.sendRedirect("main.do");///!!!!!나중에 관리자 메인과 연결!!!!!!!!!
		}else if (check == -1) {
			// 비밀번호가 틀린 경우
			out.println("<script>");
			out.println("alert('비밀번호를 확인해주세요')");
			out.println("history.back()");
			out.println("</script>");
		}else if(check == 0){
			// 아이디가 없거나 아이디가 틀린 경우
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디 입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
}
