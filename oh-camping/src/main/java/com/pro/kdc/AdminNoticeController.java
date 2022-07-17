package com.pro.kdc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pro.yuna.CampNoticeDTO;
import com.pro.yuna.CampQaDTO;
import com.pro.yuna.PageDTO;



@Controller
public class AdminNoticeController {

	@Autowired
	adminNoticeDAO dao;
	
	
	
	private final int rowsize = 6;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	//private static final String saveDerectory = "C:\\Users\\user\\OneDrive\\문서\\Oh-camping\\oh-camping\\src\\main\\webapp\\resources\\upload";
	
	
	
	@RequestMapping("admin_notice_list.do")
	public String noticeList(HttpServletRequest request, Model model) {
		
		int page;   // 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}else {
			page = 1;    // 처음으로 게시물 전체 목록 태그를 선택한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 메서드 호출
		totalRecord = this.dao.getCampNoticeListCount();
		
		noticePageDTO dto = new noticePageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<CampNoticeDTO> list = this.dao.getCampNoticeList(dto);
		
		model.addAttribute("adminNoticeList", list);
		model.addAttribute("adminPaging", dto);
		
		return "kdc/admin_notice_list";
	} // camp_notice.do 끝
	
	
	@RequestMapping("admin_notice_write.do")
	public String write() {
		
		return "kdc/admin_notice_write";
		
	}
	
	
	@RequestMapping("admin_notice_write_ok.do")
	public void writeOK(MultipartHttpServletRequest mRequest, Model model, MultipartFile imgfile,
				adminNoticeDTO dto, HttpServletResponse response, HttpServletRequest req) throws IOException {

		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check =0;
		
		if(imgfile.isEmpty()) {
			check = this.dao.insertNotice2(dto);
		}else {
		
		String file_name = imgfile.getOriginalFilename();
		
		String saveDerectory = req.getSession().getServletContext().getRealPath("/").concat("resources")+"\\upload";
		
		File target = new File(saveDerectory, file_name);
		
		FileCopyUtils.copy(imgfile.getInputStream(), new FileOutputStream(target));

		dto.setNotice_file(file_name);
		
		check = this.dao.insertNotice(dto); }
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('공지사항을 등록했습니다.')");
			out.println("location.href='admin_notice_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('공지사항 등록에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		

	}
	
	
	@RequestMapping("admin_notice_content.do")
	public String adminNoticeContent(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 조회수를 증가시켜 주는 메서드 호출
		this.dao.readAdminNoticeCount(no);
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampNoticeDTO dto = this.dao.adminNoticeCont(no);
		
		String file = dto.getNotice_file();
		
		model.addAttribute("adminCont", dto);
		model.addAttribute("file", file);
		
		model.addAttribute("adminPage", nowPage);
		
		return "kdc/admin_notice_content";
	} 
	
	
	@RequestMapping("admin_notice_delete.do")
	public void noticeDelete(@RequestParam("no") int no, @RequestParam("page") int nowPage, HttpServletResponse response) throws IOException {
		
		int check = this.dao.adminNoticeDelete(no);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('공지사항이 삭제되었습니다.')");
			out.println("location.href='admin_notice_list.do?page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('오류 발생')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	
	@RequestMapping("admin_notice_update.do")
	public String noticeUpdate(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampNoticeDTO dto = this.dao.adminNoticeCont(no);
		String file = dto.getNotice_file();
		
		model.addAttribute("Update", dto);
		model.addAttribute("file", file);
		
		model.addAttribute("Page", nowPage);
		
		return "kdc/admin_notice_update";
	}
	
	
	@RequestMapping("admin_notice_update_ok.do")
	public void noticeUpdateOk(MultipartHttpServletRequest mRequest, Model model, MultipartFile imgfile, 
			adminNoticeDTO dto, HttpServletResponse response, HttpServletRequest req, @RequestParam("page") int nowPage , @RequestParam("file_check") int file_check) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		System.out.println(file_check);
		
		int check = 0;
		
		if(file_check == 1) {
			check = this.dao.adminNoticeUpdate(dto);
		}else if(file_check == 2){
			check = this.dao.adminNoticeUpdate2(dto);
		}else if(file_check == 3) {
			
			String file_name;
			
				file_name = imgfile.getOriginalFilename();

			
			
			String saveDerectory = req.getSession().getServletContext().getRealPath("/").concat("resources")+"\\upload";
			
			File target = new File(saveDerectory, file_name);
			
			FileCopyUtils.copy(imgfile.getInputStream(), new FileOutputStream(target));
			
			dto.setNotice_file(file_name);
			
			check = this.dao.adminNoticeUpdate3(dto);
		}
		
		
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('공지사항을 수정했습니다.')");
			out.println("location.href='admin_notice_content.do?no="+dto.getNotice_no()+"&page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('공지사항 수정에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}		
	}
	

	
	
}
