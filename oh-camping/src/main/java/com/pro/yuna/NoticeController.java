package com.pro.yuna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class NoticeController {
	
	@Autowired
	private CampNoticeDAO dao;
	
	private final int rowsize = 6;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	
	@RequestMapping("camp_notice.do")
	public String noticeList(HttpServletRequest request, Model model) {
		
		int page;   // 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}else {
			page = 1;    // 처음으로 게시물 전체 목록 태그를 선택한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 메서드 호출
		totalRecord = this.dao.getCampNoticeListCount();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<CampNoticeDTO> list = this.dao.getCampNoticeList(dto);
		
		model.addAttribute("NoticeList", list);
		model.addAttribute("Paging", dto);
		
		return "board/notice";
	} // camp_notice.do 끝
	
	
	@RequestMapping("camp_notice_content.do")
	public String noticeContent(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 조회수를 증가시켜 주는 메서드 호출
		this.dao.readCampNoticeCount(no);
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampNoticeDTO dto = this.dao.CampNoticeCont(no);
		
		String file = dto.getNotice_file();
		
		System.out.println(file);
		
		model.addAttribute("Cont", dto);
		
		model.addAttribute("Page", nowPage);
		
		model.addAttribute("file", file);
		
		return "board/notice_content";
	} // camp_notice_content.do 끝
	
	
	@RequestMapping("camp_notice_search.do")
	public String search(@RequestParam("field") String field,
			@RequestParam("keyword") String keyword,
			@RequestParam("page") int nowPage, Model model) {
		
		// 검색분류와 검색어에 해당하는 게시글의 수를 DB에서 확인하는 작업
		totalRecord = this.dao.searchCampNoticeCount(field, keyword);
		
		PageDTO pdto = 
				new PageDTO(nowPage, rowsize, totalRecord, field, keyword);
		
		System.out.println("검색 게시물 수 >>> " + pdto.getTotalRecord());
		
		System.out.println("검색 전체 페이지 수 >>> " + pdto.getAllPage());
		
		// 검색 시 한페이지당 보여질 게시물의 수만큼 검색한 게시물을 List로 가져오는 메서드.
		List<CampNoticeDTO> list = this.dao.searchCampNoticeList(pdto);
		
		model.addAttribute("searchPageList", list);
		
		model.addAttribute("Paging", pdto);
		
		return "board/notice_search";
		
	} // camp_notice_search.do 끝
}
