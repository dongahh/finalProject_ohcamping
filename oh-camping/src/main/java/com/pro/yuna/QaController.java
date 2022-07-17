package com.pro.yuna;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class QaController {
	
	@Autowired
	private CampQaDAO dao;
	
	@Autowired
	private CampMemberDAO mdao;
	
	private final int rowsize = 6;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	
	@RequestMapping("camp_qa.do")
	public String qaList(HttpServletRequest request, Model model) {
		
		int page;   // 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}else {
			page = 1;    // 처음으로 게시물 전체 목록 태그를 선택한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 메서드 호출
		totalRecord = this.dao.getCampQaListCount();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<CampQaDTO> list = this.dao.getCampQaList(dto);
		
		model.addAttribute("QaList", list);
		model.addAttribute("Paging", dto);
		
		return "board/q.a";
	} // camp_qa.do 끝
	
	
	@RequestMapping("camp_qa_write.do")
	public String qaWrite(@RequestParam("id") String userId,
			@RequestParam("page") int nowPage, Model model) {
		
		// 로그인한 사용자 id의 정보 불러오기
		CampMemberDTO mdto = mdao.getMember(userId);
		
		model.addAttribute("Info", mdto);
		model.addAttribute("Page", nowPage);
		
		return "board/qa_write";
	}
	
	
	@RequestMapping("camp_qa_write_ok.do")
	public void qaWriteOk(CampQaDTO dto, 
			HttpServletResponse response) throws IOException {
		
		int check = this.dao.writeCampQa(dto);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('문의글을 등록했습니다.')");
			out.println("location.href='camp_qa.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시글을 등록하지 못했습니다. 관리자에게 문의하세요')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	
	
	@RequestMapping("camp_qa_content.do")
	public String qaContent(@RequestParam("no") int no, @RequestParam("id") String userId,
			@RequestParam("page") int nowPage, CampQaDTO dto, Model model, 
			HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if (userId.equals("admin")) { // 관리자라면
			// 조회수를 증가시켜 주는 메서드 호출
			this.dao.readCampQaCount(no);
			// 게시글 상세 내역을 조회하는 메서드 호출
			dto = this.dao.CampQaCont(no);
			model.addAttribute("Cont", dto);
			model.addAttribute("Page", nowPage);
			return "board/qa_cont";
			
		}else { // 관리자 아님 ==> 사용자
			// 로그인 아이디와 게시글의 qa_userid와 일치하는지 확인
			int check = this.dao.checkCampQaUserId(userId, no); 
			
			if (check == 1) { // 일치
				this.dao.readCampQaCount(no);
				dto = this.dao.CampQaCont(no);
				model.addAttribute("Cont", dto);
				model.addAttribute("Page", nowPage);
				return "board/qa_cont";
				
			}else { // 불일치
				out.println("<script>");
				out.println("alert('읽기 권한이 없습니다.')");
				out.println("location.href='camp_qa.do?page="+nowPage+"'");
				out.println("</script>");
			}
			
			out.println("<script>");
			out.println("alert('읽기 권한이 없습니다.')");
			out.println("location.href='camp_qa.do?page="+nowPage+"'");
			out.println("</script>");
		}
		
		return null;
	}
	
	
	@RequestMapping("camp_qa_modify.do")
	public String qaModify(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampQaDTO dto = this.dao.CampQaCont(no);
		
		model.addAttribute("modify", dto);
		
		model.addAttribute("Page", nowPage);
		
		return "board/qa_modify";
	}
	
	@RequestMapping("camp_qa_update.do")
	public String qaupdate(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampQaDTO dto = this.dao.CampQaCont(no);
		
		model.addAttribute("modify", dto);
		
		model.addAttribute("Page", nowPage);
		
		return "board/qa_update";
	}
	
	
	@RequestMapping("camp_qa_modify_ok.do")
	public void qaModifyOk(CampQaDTO dto,
			@RequestParam("page") int nowPage, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check = this.dao.modifyCampQa(dto);
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('게시물을 수정하였습니다')");
			out.println("location.href='camp_qa_content.do?id="+dto.getQa_userid()+"&no="+dto.getQa_no()+"&page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물을 수정하지 못했습니다. 관리자에게 문의하세요')");
			out.println("history.back()");
			out.println("</script>");
		}		
	}
	
	
	
	
	@RequestMapping("camp_qa_delete.do")
	public void qaDeleteOk(CampQaDTO dto,
			@RequestParam("no") int no, @RequestParam("id") String id,
			@RequestParam("page") int nowPage,
			HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check = this.dao.deleteCampQa(id, no);
		
		if(check > 0) {
			this.dao.updateSequence(no);
			
			out.println("<script>");
			out.println("alert('게시물을 삭제했습니다.')");
			out.println("location.href='camp_qa.do?page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물을 삭제하지 못했습니다. 관리자에게 문의하세요')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	
	
	
	// 답변 관련
	@RequestMapping("camp_qa_reply.do")
	public String qaReply(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampQaDTO dto = this.dao.CampQaCont(no);
		
		model.addAttribute("reply", dto);
		
		model.addAttribute("Page", nowPage);
		
		return "board/qa_reply";
	}
	
	
	@RequestMapping("camp_qa_reply_ok.do")
	public void qaReplyOk(CampQaDTO dto,
			@RequestParam("page") int nowPage, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check = this.dao.replyCampQa(dto);
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('답변이 등록되었습니다.')");
			out.println("location.href='camp_qa.do?page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('답변을 등록하지 못했습니다. 관리자에게 문의하세요')");
			out.println("history.back()");
			out.println("</script>");
		}		
	}
	
	
	@RequestMapping("camp_qa_search.do")
	public String search(@RequestParam("field") String field,
			@RequestParam("keyword") String keyword,
			@RequestParam("page") int nowPage, Model model) {
		
		// 검색분류와 검색어에 해당하는 게시글의 수를 DB에서 확인하는 작업
		totalRecord = this.dao.searchCampQaCount(field, keyword);
		
		PageDTO pdto = 
				new PageDTO(nowPage, rowsize, totalRecord, field, keyword);
		
		
		// 검색 시 한페이지당 보여질 게시물의 수만큼 검색한 게시물을 List로 가져오는 메서드.
		List<CampQaDTO> list = this.dao.searchCampQaList(pdto);
		
		model.addAttribute("searchPageList", list);
		
		model.addAttribute("Paging", pdto);
		
		return "board/qa_search";
		
	} // camp_qa_search.do 끝
}
