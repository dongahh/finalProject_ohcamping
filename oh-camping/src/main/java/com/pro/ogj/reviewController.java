package com.pro.ogj;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pro.ogjmodel.ReviewDAO;
import com.pro.ogjmodel.ReviewDTO;
import com.pro.ogjmodel.ReviewPageDTO;
import com.pro.ogjmodel.ReviewSubDTO;
import com.pro.ogjmodel.ReviewSubDTO3;
import com.pro.ogjmodel.ReviewSubDTO2;
import com.pro.yuna.CampNoticeDTO;
import com.pro.yuna.CampQaDTO;
import com.pro.yuna.PageDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class reviewController {

	@Autowired
	private ReviewDAO dao;

	private final int rowsize = 6;
	private int totalRecord = 0;

	@RequestMapping("review.do")
	public String ogjReviewList(HttpServletRequest request, Model model, HttpSession session) {

		int page; // 현재 페이지 변수
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} else {
			page = 1; // 처음으로 게시물 전체 목록 태그 선택시
		}

		// DB상의 전체 게시물의 수를 확인하는 메서드.
		totalRecord = this.dao.getListCount();

		ReviewPageDTO dto = new ReviewPageDTO(page, rowsize, totalRecord);

		// 페이지에 해당하는 게시물을 가져오는 메서드 호출

		List<ReviewDTO> list = this.dao.getReviewList(dto);
		
		

		if (session.getAttribute("sessionID") != null) {
			String id = (String) session.getAttribute("sessionID");
			List<ReviewSubDTO2> sublist = this.dao.getReviewSubData(id);
			List<ReviewSubDTO> subdtolist = new ArrayList<ReviewSubDTO>();
			

			if (sublist.isEmpty()) {
				model.addAttribute("subList", null);
			} else {
				for (ReviewSubDTO2 subdto2 : sublist) {
					int pay_no = subdto2.getPayment_no();
					List<ReviewSubDTO3> sublist3 = this.dao.getdetail_roomno(pay_no);
					for(ReviewSubDTO3 subdto3 : sublist3) {
						ReviewSubDTO subdto = new ReviewSubDTO();
						String room_name = this.dao.getReviewSubData2(subdto3.getPaymentdetail_roomno());
						String room_resdate = this.dao.getReviewSubData3(subdto3.getPaymentdetail_roomno());
						subdto.setRoom_name(room_name);
						subdto.setRoom_resdate(room_resdate);
						subdtolist.add(subdto);
						
					}
				}
				model.addAttribute("subList", subdtolist);
			}

		}

		model.addAttribute("List", list);

		model.addAttribute("Paging", dto);

		return "ogj/review";
	}

	@RequestMapping("review_write.do")
	public String reviewWrite(@RequestParam("radio") String radio, @RequestParam("page") int nowPage, Model model) {

		String[] radioValue = radio.split("/");

		String roomName = radioValue[0];
		String orderDate = radioValue[1];

		System.out.println(roomName);
		System.out.println(orderDate);

		model.addAttribute("roomName", roomName);
		model.addAttribute("orderDate", orderDate);
		model.addAttribute("Page", nowPage);

		return "ogj/review_write";
	}



	/*
	 * @RequestMapping("review_write_ok.do") public String
	 * reviewWrite(MultipartHttpServletRequest mtfRequest) {
	 * 
	 * List<MultipartFile> fileList = mtfRequest.getFiles("review_file"); String src
	 * = mtfRequest.getParameter("test"); System.out.println(src);
	 * 
	 * String path = "C:\\Users\\OGJ\\Desktop\\uploadtest\\";
	 * 
	 * for (MultipartFile mf : fileList) { String originFileName =
	 * mf.getOriginalFilename(); // 원본 파일 명
	 * 
	 * System.out.println("originFileName : " + originFileName);
	 * 
	 * String safeFile = path + System.currentTimeMillis() + originFileName; try {
	 * mf.transferTo(new File(safeFile)); } catch (IllegalStateException e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); } catch (IOException e)
	 * { // TODO Auto-generated catch block e.printStackTrace(); } }
	 * 
	 * 
	 * return "ogj/review";
	 * 
	 * }
	 */
	
	@RequestMapping("review_write_ok.do")
	public void reviewOk(ReviewDTO dto, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check = this.dao.insertReview(dto);
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('게시물 등록 완료')");
			out.println("location.href='review.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물 등록 실패')");
			out.println("history.back()");
			out.println("</script>");
		}		
	}

	@RequestMapping("review_content.do")
	public String reviewContent(@RequestParam("no") int no, @RequestParam("page") int nowPage, Model model) {

		// 조회수를 증가시켜 주는 메서드 호출
		this.dao.readCount(no);

		// 게시글 상세 내역을 조회하는 메서드 호출
		ReviewDTO dto = this.dao.ReviewCont(no);

		model.addAttribute("Cont", dto);

		model.addAttribute("Page", nowPage);
		
		

		return "ogj/review_content";
	}
	
	@RequestMapping("review_delete.do")
	public void reviewDelete(@RequestParam("num") int no, HttpServletResponse response) throws IOException {

		 
		

		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		// 게시글 삭제
		int check = this.dao.deleteReview(no);
		
		this.dao.updateSequence(no);
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('게시물 삭제 완료')");
			out.println("location.href='review.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물 삭제 실패')");
			out.println("history.back()");
			out.println("</script>");
		}	
		
		
	}
	
	@RequestMapping("review_update_ok.do")
	public void review_update_ok(ReviewDTO dto ,
			@RequestParam("Page") int nowPage, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int check = this.dao.updateReview(dto);
		
		
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('게시물 수정 완료')");
			out.println("location.href='review_content.do?no="+dto.getReview_no()+"&page="+nowPage+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('게시물 수정 실패')");
			out.println("history.back()");
			out.println("</script>");
		}		
	}
	
	@RequestMapping("review_update.do")
	public String reviewUpdate(@RequestParam("num") int no, @RequestParam("page") int nowPage, Model model) {



		// 게시글 상세 내역을 조회하는 메서드 호출
		ReviewDTO dto = this.dao.ReviewCont(no);

		model.addAttribute("Cont", dto);

		model.addAttribute("Page", nowPage);
		
		

		return "ogj/review_update";
	}
	
	@RequestMapping("camp_review_search.do")
	public String search(@RequestParam("field") String field,
			@RequestParam("keyword") String keyword,
			@RequestParam("page") int nowPage, Model model,HttpSession session) {
		
		// 검색분류와 검색어에 해당하는 게시글의 수를 DB에서 확인하는 작업
		totalRecord = this.dao.searchReview(field, keyword);
		
		ReviewPageDTO pdto = 
				new ReviewPageDTO(nowPage, rowsize, totalRecord, field, keyword);
		
		System.out.println("검색 게시물 수 >>> " + pdto.getTotalRecord());
		
		System.out.println("검색 전체 페이지 수 >>> " + pdto.getAllPage());
		
		// 검색 시 한페이지당 보여질 게시물의 수만큼 검색한 게시물을 List로 가져오는 메서드.
		List<ReviewDTO> list = this.dao.searchReviewList(pdto);
		
		model.addAttribute("List", list);
		
		model.addAttribute("Paging", pdto);
		
		if (session.getAttribute("sessionID") != null) {
			String id = (String) session.getAttribute("sessionID");
			List<ReviewSubDTO2> sublist = this.dao.getReviewSubData(id);
			List<ReviewSubDTO> subdtolist = new ArrayList<ReviewSubDTO>();
			

			if (sublist.isEmpty()) {
				model.addAttribute("subList", null);
			} else {
				for (ReviewSubDTO2 subdto2 : sublist) {
					int pay_no = subdto2.getPayment_no();
					List<ReviewSubDTO3> sublist3 = this.dao.getdetail_roomno(pay_no);
					for(ReviewSubDTO3 subdto3 : sublist3) {
						ReviewSubDTO subdto = new ReviewSubDTO();
						String room_name = this.dao.getReviewSubData2(subdto3.getPaymentdetail_roomno());
						String room_resdate = this.dao.getReviewSubData3(subdto3.getPaymentdetail_roomno());
						subdto.setRoom_name(room_name);
						subdto.setRoom_resdate(room_resdate);
						subdtolist.add(subdto);
						
					}
				}
				model.addAttribute("subList", subdtolist);
			}

		}
		
		return "ogj/review_search";
		
	}
	
	@RequestMapping("admin_review.do")
	public String admin_review(HttpServletRequest request, Model model) {
		
		int page; // 현재 페이지 변수
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} else {
			page = 1; // 처음으로 게시물 전체 목록 태그 선택시
		}

		// DB상의 전체 게시물의 수를 확인하는 메서드.
		totalRecord = this.dao.getListCount();

		ReviewPageDTO dto = new ReviewPageDTO(page, rowsize, totalRecord);

		// 페이지에 해당하는 게시물을 가져오는 메서드 호출

		List<ReviewDTO> list = this.dao.getReviewList(dto);

		model.addAttribute("List", list);

		model.addAttribute("Paging", dto);
		
		return "ogj/admin_review";

	}
	
	
	  @RequestMapping("admin_delete_review.do") 
	  public String admin_review_delete(HttpServletRequest request, Model model) {
	  
	  int page; // 현재 페이지 변수 
	  if (request.getParameter("page") != null) { page =
	  Integer.parseInt(request.getParameter("page")); } else { page = 1; 
	  // 처음으로 게시물 전체 목록 태그 선택시 
	  }
	  
	  // DB상의 전체 게시물의 수를 확인하는 메서드.
	  totalRecord = this.dao.getDeleteListCount();
	  
	  ReviewPageDTO dto = new ReviewPageDTO(page, rowsize, totalRecord);
	  
	  // 페이지에 해당하는 게시물을 가져오는 메서드 호출
	  
	  List<ReviewDTO> list = this.dao.getDeleteReviewList(dto);
	  
	  model.addAttribute("List", list);
	  
	  model.addAttribute("Paging", dto);
	  
	  return "ogj/admin_review_delete";
	  
	  }
	 
	
    @RequestMapping("admin_review_delete.do")
    public void adminReviewDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	response.setContentType("text/html; charset=UTF-8");
		
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        int check = 0;
        
        for(int i=0; i<size; i++) {
        	int no = Integer.parseInt(ajaxMsg[i]);
        	
        	ReviewDTO deletedto = this.dao.ReviewCont(no);
        	this.dao.insertDeleteReview(deletedto);
        	
        	check = this.dao.deleteReview(no);
        	
        	if (check > 0) {
        		this.dao.updateSequence(no);;
			}
        }

    }
    
    @RequestMapping("admin_review_reset.do")
    public void adminReviewReset(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	response.setContentType("text/html; charset=UTF-8");
		
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        
        for(int i=0; i<size; i++) {
        	int no = Integer.parseInt(ajaxMsg[i]);
        	
        	//기존 review 테이블 번호 한칸식 위로
        	this.dao.updateResetSequence(no);
        	
        	// 해당 delete 리뷰 데이터 가져오기
        	ReviewDTO deletedto = this.dao.getDeleteReviewCont(no);
        	
        	// 가져온 데이터 review 로 넣어주기
        	int a = this.dao.insertReview2(deletedto);
        	
        	if(a > 0) {
        		//delete review 에 데이터 삭제하기
        		int b =  this.dao.deleteDeleteReview(no);
        	}

        }  

    }
	
	
	
	

	@RequestMapping("ogj_room.do")
	public String ogj_room() {
		return "ogj/room";

	}

	@RequestMapping("bigroom.do")
	public String bigroom() {
		return "ogj/bigroom";

	}

	@RequestMapping("valley.do")
	public String valley() {
		return "ogj/valley";

	}

	@RequestMapping("facility.do")
	public String facility() {
		return "ogj/facility";

	}

	@RequestMapping("facility_sub.do")
	public String bbq(Model model, @RequestParam("no") int num) {

		String img = "";
		String text = "";
		String text2 = "";
		if (num == 1) {
			img = "resources/images/bbq";
			text = "Barbecue";
			text2 = "- 저희가 준비한 수영장에서 마음껏 수영해보세요<br>" + "- 온수 수영장 이용시간 : 15:00 부터 20:00까지 수영장 안전수칙을 읽고 꼭 준수해주세요.<br>"
					+ "- 온수 수영장 깊이 : 0.9M<br>" + "- 물 온도 : 31도<br>" + "- 준비물 : 수영복, 비치타올, 여분의 수건, 유아구명조끼";
		} else if (num == 2) {
			img = "resources/images/pool";
			text = "Swimming Pool";
			text2 = "- 저희가 준비한 수영장에서 마음껏 수영해보세요<br>" + "- 온수 수영장 이용시간 : 15:00 부터 20:00까지 수영장 안전수칙을 읽고 꼭 준수해주세요.<br>"
					+ "- 온수 수영장 깊이 : 0.9M<br>" + "- 물 온도 : 31도<br>" + "- 준비물 : 수영복, 비치타올, 여분의 수건, 유아구명조끼";
		} else if (num == 3) {
			img = "resources/images/val";
			text = "Valley";
			text2 = "-저희 펜션 근처에 있는 계곡에서 자연을 만끽해보세요";
		} else if (num == 4) {
			img = "resources/images/play";
			text = "playground";
			text2 = "- 꼬마손님들을 위한 놀이터가 마련되어있습니다.\r\n" + "안전에 유의하며 즐겨주세요 ^^";
		} else if (num == 5) {
			img = "resources/images/sauna";
			text = "sauna";
			text2 = "- 자연 속의 청정 사우나에서 쌓인 피로를 풀어보세요";
		}
		model.addAttribute("img", img);
		model.addAttribute("text", text);
		model.addAttribute("text2", text2);

		return "ogj/facility_sub";

	}

	@RequestMapping("travel.do")
	public String travel() {

		return "ogj/travel";

	}

	@RequestMapping("travel_sub.do")
	public String travel(Model model, @RequestParam("no") int num) {

		String img = "";
		String text = "";
		String text2 = "";
		String text3 = "";
		if (num == 1) {
			img = "resources/images/travel1";
			text = "Garden of Morning Calm";
			text2 = "아침고요수목원";
			text3 = "잣나무 숲이 울창한 축령산 자락에 한상경이 설계 조성한 수목원\r\n"
					+ "수목원에는 고향집정원, 무궁화동산, 고산암석원, 분재정원, 에덴정원, 시가 있는 산책로, 천년향, 석정원, 하경정원, 한국주제정원 등의 특색 있는 정원이 있다.\r\n"
					+ "이외에 산수경온실, 알파인온실, 아침고요갤러리, 역사관, 추억공작소 등의 부대시설이 있다.";
		} else if (num == 2) {
			img = "resources/images/travel2";
			text = "Petite France";
			text2 = "쁘띠 프랑스";
			text3 = "잣나무 숲이 울창한 축령산 자락에 한상경이 설계 조성한 수목원\r\n"
					+ "쁘띠 프랑스는 이름에서부터 프랑스의 향기가 물씬 풍기는 프랑스 문화 마을이에요. 프랑스어로 ‘쁘띠’는 작다는 뜻이에요.\r\n"
					+ "쁘띠 프랑스는 특히 기후가 따뜻하고 온화한 프랑스 남쪽 지방의 모습을 많이 닮았어요.\r\n"
					+ "이 작은 마을에는 프랑스의 음악인 샹송이 흐르고 프랑스를 대표하는 작가인 생텍쥐페리 기념관도 있답니다.";
		} else if (num == 3) {
			img = "resources/images/travel3";
			text = "Nami Island";
			text2 = "남이섬";
			text3 = "북한강에 반달 모양으로 떠 있는 작은 섬, 남이섬\r\n"
					+ "서너 시간이면 다 둘러볼 수 있을 정도로 아담한 규모지만 이곳을 찾는 방문객 수는 어마어마하다. 지난해에만 267만여 명이 다녀갔는데, 이 가운데 67만 명이 외국인 관광객이었다고.\r\n"
					+ "쉼 없이 배가 오가기 때문에 기다리는 시간이 길지 않다. 또 들어가 보면 구석구석 한적한 곳이 많아 겁먹었던 것보다 훨씬 여유로운 공간을 즐길 수 있다.";
		} else if (num == 4) {
			img = "resources/images/travel4";
			text = "Phochen Art Valley";
			text2 = "포천아트밸리";
			text3 = "언덕위의 기암괴석과 아득한 천주호는 방치 되었던 폐채석장의 새로운 얼굴이다.\r\n"
					+ "흉물스럽게 버려졌던 이곳은 포천시에서 야심차게 진행한 국내 최초 환경 복원 프로젝트의 결과물이다.\r\n"
					+ "지금은 연간 100만명이 넘는 관람객이 방문하고 있으며 이곳에서 기획전시, 주말공연, 기획공연 등 다양한 프로그램이 진행되어 관광객 뿐 아니라 지역 주민들도 즐겨찾는 문화예술공간이 되었다.";

		} else if (num == 5) {
			img = "resources/images/travel5";
			text = "Bears Town Ski Resort";
			text2 = "베어스타운스키장";
			text3 = "(주)베어스타운이 운영하는 종합 레저단지로, 1985년 12월 문을 열었다\r\n"
					+ "서울에서 북쪽으로 40㎞ 거리에 있으며, 자동차로 50분 정도 걸린다. 주요 레포츠 시설인 스키장을 비롯해 대규모 콘도미니엄·유스호스텔 등 숙박시설과 편의시설을 갖추고 있다.";
		}
		model.addAttribute("img", img);
		model.addAttribute("text", text);
		model.addAttribute("text2", text2);
		model.addAttribute("text3", text3);

		return "ogj/travel_sub";

	}

	@RequestMapping("location.do")
	public String location() {

		return "ogj/location";

	}

	@RequestMapping("about.do")
	public String about() {

		return "ogj/about";

	}

}
