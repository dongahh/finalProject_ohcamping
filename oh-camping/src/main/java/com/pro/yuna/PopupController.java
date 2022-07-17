package com.pro.yuna;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Controller
public class PopupController {
	
	@Autowired
	private CampPopupDAO dao;
	
	private final int rowsize = 6;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	@RequestMapping("admin_popup.do")
	public String popupList(HttpServletRequest request, Model model) {
		
		int page;   // 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}else {
			page = 1;    // 처음으로 게시물 전체 목록 태그를 선택한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 메서드 호출
		totalRecord = this.dao.getCampPopupCount();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<CampPopupDTO> list = this.dao.getCampPopupList(dto);
		
		model.addAttribute("PopupList", list);
		model.addAttribute("Paging", dto);
		
		return "admin/popup";
		
	} // admin_popup.do
	
	@RequestMapping("admin_popup_insert.do")
	public String popupInsert(@RequestParam("page") int nowPage, Model model) {
		
		model.addAttribute("Page", nowPage);
		
		return "admin/popup_insert";
	} // admin_popup_insert.do
	
	
	@RequestMapping("admin_popup_insert_ok.do")
	public void popupInsertOk(CampPopupDTO dto, @RequestParam("page") int nowPage,
			HttpServletResponse response, MultipartHttpServletRequest mRequest, HttpServletRequest req) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(this.fileUpload(mRequest, req)) {
			int check = this.dao.insertCampPopup(dto);
			
			if (check == 0) {
				out.println("<script>");
				out.println("alert('팝업창을 등록하지 못했습니다. 관리자에게 문의하세요')");
				out.println("history.back()");
				out.println("</script>");
			}
			out.println("<script>");
			out.println("alert('팝업창을 등록했습니다.')");
			out.println("location.href='admin_popup.do'");
			out.println("</script>");
			
		}else {
			out.println("<script>");
			out.println("alert('팝업창을 등록하지 못했습니다. 관리자에게 문의하세요')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
	} // admin_popup_insert_ok.do
	
	
	public boolean fileUpload(MultipartHttpServletRequest mRequest, HttpServletRequest req ) {
		
		boolean isUpload = false;
		
		//String uploadPath = "C:\\NCS\\workspace(spring)\\Oh-camping\\oh-camping\\src\\main\\webapp\\resources\\img\\";
		
		
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/").concat("resources")+"\\img\\";
		
		
		
		// 업로드된 파일들의 이름 목록을 제공하는 메서드.
		Iterator<String> iterator = mRequest.getFileNames();
		
		while(iterator.hasNext()) {
			
			String uploadFileName = iterator.next();
			
			MultipartFile mFile = mRequest.getFile(uploadFileName);
			
			// 업로드한 파일의 이름을 구하는 메서드.
			String originaleFileName = mFile.getOriginalFilename();
			
			// 실제 폴더를 만들어 보자.
			// ........\\resources\\upload\\2022-05-30
			String homedir = uploadPath + "pop";

			File path1 = new File(homedir);
			
			if(!path1.exists()) {
				path1.mkdirs();
			}
			
			// 실제 파일을 만들어 보자.
			String saveFileName = originaleFileName;
			
			if(saveFileName != null) {				
				
				try {
					//  ........\\resources\\upload\\2022-05-30\\실제 파일
					File origin = new File(homedir + "/" + saveFileName);
					
					// transferTo() : 파일 데이터를 지정한 폴더로 실제 저장시키는 메서드. 
					mFile.transferTo(origin);
					
					isUpload = true;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					
				}
			}
		}  // while문 end
		
		return isUpload;
	
	}  // fileUpload() 메서드 end
	
	
	
	@RequestMapping("admin_popup_modify.do")
	public String popupModify(@RequestParam("no") int no,
			@RequestParam("page") int nowPage, Model model) {
		
		// 게시글 상세 내역을 조회하는 메서드 호출
		CampPopupDTO dto = this.dao.campPopupCont(no);
		
		model.addAttribute("modify", dto);
		
		model.addAttribute("Page", nowPage);
		
		return "admin/popup_modify";	
	}
	
	
	@RequestMapping("admin_popup_modify_ok.do")
	public void popupModifyOk(CampPopupDTO dto, @RequestParam("page") int nowPage,
			HttpServletResponse response, MultipartHttpServletRequest mRequest) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if (mRequest.getFile("p_image_new") == null) { // 첨부파일이 없는 경우
			System.out.println("이거!!!!!!!!!!!!!!!!!!!" + dto.getPopup_no());
			int check = this.dao.modifyCampPopup(dto);
			
			if(check > 0) {
				out.println("<script>");
				out.println("alert('팝업창을 수정했습니다.')");
				out.println("location.href='admin_popup.do'");
				out.println("</script>");
			}else {
				out.println("<script>");
				out.println("alert('팝업창을 수정하지 못했습니다. 관리자에게 문의하세요')");
				out.println("history.back()");
				out.println("</script>");
			}	
			
		}else { // 첨부파일이 있는 경우
			if(this.fileModifyUpload(mRequest)) { 
				int check = this.dao.modifyCampPopup(dto);
				
				if (check == 0) {
					out.println("<script>");
					out.println("alert('팝업창을 등록하지 못했습니다. 관리자에게 문의하세요')");
					out.println("history.back()");
					out.println("</script>");
				}
				
				out.println("<script>");
				out.println("alert('팝업창을 수정했습니다.')");
				out.println("location.href='admin_popup.do'");
				out.println("</script>");
				
			}else {
				out.println("<script>");
				out.println("alert('팝업창을 등록하지 못했습니다. 관리자에게 문의하세요')");
				out.println("history.back()");
				out.println("</script>");
			}
		}
		
	} // admin_popup_modify_ok.do
	
	public boolean fileModifyUpload(MultipartHttpServletRequest mRequest) {
		
		boolean isUpload = false;
		
		String uploadPath = "C:\\NCS\\workspace(spring)\\Oh-camping\\oh-camping\\src\\main\\webapp\\resources\\img\\";
		
		String originaleFileName = "";
		
		MultipartFile mFile = mRequest.getFile("p_image_new");
		
		originaleFileName = mFile.getOriginalFilename();
		
		// 실제 폴더를 만들어 보자.
		// ........\\resources\\upload\\2022-05-30
		String homedir = uploadPath + "pop";

		File path1 = new File(homedir);
		
		if(!path1.exists()) {
			path1.mkdirs();
		}
		
		// 실제 파일을 만들어 보자.
		String saveFileName = originaleFileName;
		
		if(saveFileName != null) {				
			
			try {
				//  ........\\resources\\upload\\2022-05-30\\실제 파일
				File origin = new File(homedir + "/" + saveFileName);
				
				// transferTo() : 파일 데이터를 지정한 폴더로 실제 저장시키는 메서드. 
				mFile.transferTo(origin);
				
				isUpload = true;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				
			}
		}
		return isUpload;
	
	}  // fileModifyUpload
	
	

    @RequestMapping("admin_popup_delete.do")
    public void popupDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        int check = 0;
        
        for(int i=0; i<size; i++) {
        	int no = Integer.parseInt(ajaxMsg[i]);
        	check = this.dao.deleteCampPopup(no);
        	if (check > 0) {
        		this.dao.updatePopupSequence(no);
			}
        }

    }
	
}
