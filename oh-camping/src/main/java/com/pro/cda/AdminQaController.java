package com.pro.cda;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pro.yuna.PageDTO;

@Controller
@SessionAttributes
public class AdminQaController {
	
	@Autowired
	private AdminQaDAO dao;
	
	private final int rowsize = 6;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	@RequestMapping("admin_qa.do")
	public String adminQaList(HttpServletRequest request, Model model) {
		
		int page; //현재 페이지
		
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
			
		}else {
			page = 1;
		}
		
		//qa 글 전체 수
		totalRecord = this.dao.getqacount();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		List<AdminQaDTO> adminQaDTO = new ArrayList<AdminQaDTO>();
		
		
		
		adminQaDTO = this.dao.getQaList(dto);
		
		model.addAttribute("adminQaDTO", adminQaDTO);
		model.addAttribute("pagedto", dto);

		
		return "admin/admin_qalist";
		
		
	}
	
	//검색 기능
	@RequestMapping("admin_qasearch.do")
	public String adminQaSearch(@RequestParam("field") String field,
			@RequestParam("keyword") String keyword, @RequestParam("page") int nowPage, Model model){
		
		totalRecord = this.dao.adminqasearchcount(field, keyword);
		
		PageDTO pdto = new PageDTO(nowPage, rowsize, totalRecord, field, keyword);
		List<AdminQaDTO> adminqasearch = this.dao.getQaSearh(pdto);
		
		model.addAttribute("pagedto", pdto);
		model.addAttribute("adminqasearch", adminqasearch);
		
		return "admin/admin_qasearch";
	}
	
	//답글 세부사항
	@RequestMapping("admin_qa_contnet.do")
	public String adminqacontent(@RequestParam("no") int no,@RequestParam("page") int page, Model model) {
		
		this.dao.adminqaupcount(no);
		AdminQaDTO qadto =  this.dao.getqacont(no);
		
		
		
		model.addAttribute("qadto", qadto);
		model.addAttribute("page",page );
		

		return "admin/admin_qacontent";
	}
	
	
	//답글 수정
	@RequestMapping("admin_qa_update.do")
	public String adminqaupdate(@RequestParam("no") int no, @RequestParam("page") int page , Model model) {
		//답글정보
		AdminQaDTO replydto =  this.dao.getqacont(no);
		
		int qano = replydto.getQa_group();
		
		AdminQaDTO qadto = this.dao.getqacont(qano);
		
		model.addAttribute("replydto", replydto);
		model.addAttribute("qadto", qadto);
		model.addAttribute("page",page );
		

		return "admin/admin_qaupdate";
	}
	
	//수정 완료
	@RequestMapping("admin_qa_update_ok.do")
	public void adminqaupdateok(AdminQaDTO dto, @RequestParam("page") int page, HttpServletResponse response ) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		int check = this.dao.adminqaupdate(dto);
		
		PrintWriter out = response.getWriter();
		
		if(check>0) {
			out.println("<script>");
			out.println("alert('게시물을 수정하였습니다')");
			out.println("location.href='admin_qa_contnet.do?no="+dto.getQa_no()+"&page="+page+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물 수정에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	//답글 작성
	@RequestMapping("admin_qa_write.do")
	public String adminqawrite(@RequestParam("no") int no, @RequestParam("page") int page, Model model) {
		
		AdminQaDTO qadto =  this.dao.getqacont(no);
	
		model.addAttribute("qadto", qadto);
		model.addAttribute("page",page );
		
		
		return "admin/admin_qawrite";
	}
	
	//답글 작성 완료
	@RequestMapping("admin_qa_write_ok.do")
	public void adminqawriteok(AdminQaDTO dto, @RequestParam("page") int page, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println(dto);
		int check = this.dao.adminqawrite(dto);
		
		PrintWriter out = response.getWriter();
		
		if(check>0) {
			out.println("<script>");
			out.println("alert('답글이 작성되었습니다.')");
			out.println("location.href='admin_qa_contnet.do?no="+dto.getQa_no()+"&page="+page+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('답글이 작성되지 못했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	
	//문의 삭제
	@RequestMapping("admin_qa_delete.do")
	public void adminqadelete(@RequestParam("no") int no, @RequestParam("page") int page,
									@RequestParam("indent") int indent, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		int check=0;
		//문의글 삭제의 경우
		if(indent==0) {
			check=this.dao.adminqadelete(no);		
		}else {//답글 삭제의 경우
			check=this.dao.adminqareplydelte(no);
		}
		
		PrintWriter out = response.getWriter();
		
		if(check>0) {
			out.println("<script>");
			out.println("alert('게시글이 삭제되었습니다.')");
			out.println("location.href='admin_qa.do?page="+page+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('답글 삭제에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	
	

}
