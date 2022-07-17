package com.pro.cda;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pro.cda.CalendarDTO;
import com.pro.yuna.CampMemberDTO;

@Controller
@SessionAttributes
public class DongahController {

	@Autowired
	CDA_campingDAO dao;
	 
	//예약 페이지로 이동
	@RequestMapping("reserve_reserve.do")
	public String reserve_confirm(Model model, CalendarDTO dateDTO) {

		

		Calendar cal = Calendar.getInstance();

		CalendarDTO calendarData = new CalendarDTO(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH),
				cal.get(Calendar.DATE));

		model.addAttribute("calendarInfo", calendarData);
		

		return "cda/reserv_reserve";
	}
	
	//예약페이지 이동2 -> 해당 날짜를 클릭했을 떄
	@RequestMapping("reserve_confirm2.do")
	public String reserve_confirm2(Model model, CalendarDTO dateDTO, @RequestParam("roomNo") int roomNo, @RequestParam("roomDay") String roomDay) {

		// 날짜 관련 정보 넘겨주기

		Calendar cal = Calendar.getInstance();

		CalendarDTO calendarData = new CalendarDTO(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH),
				cal.get(Calendar.DATE));

		model.addAttribute("calendarInfo", calendarData);

		model.addAttribute("roomNo", roomNo);
		model.addAttribute("roomDay", roomDay);
		
		return "cda/reserv_reserve";
	}
	
	
	

	// 달력이 나오는 ajax
	@RequestMapping("reserv_next_calendar.do")
	public String reserve_confirm_nextcalendar(@RequestParam("calendar_year") int year,
			@RequestParam("calendar_month") int month, Model model, CalendarDTO dateDTO) {

		// 날짜 관련 정보 넘겨주기

		Calendar cal = Calendar.getInstance();

		CalendarDTO calendarData = new CalendarDTO(year, month, cal.get(Calendar.DATE));

		model.addAttribute("calendarInfo", calendarData);

		return "cda/reserv_calendar_ajax";
	}

	
	//해당 날짜에 따른 객실 리스트 가져오기
	//주말 : 10% 할인
	@RequestMapping("reserve_getInfo_weekend.do")
	public String getroomWeekend(@RequestParam("calYear") int year,@RequestParam("calMonth") int month,@RequestParam("calDate") int date, @RequestParam("roomno") int roomno, Model model) {
		List<CDA_roomDTO> room_list = new ArrayList<CDA_roomDTO>();

		CDA_roomDTO dto = new CDA_roomDTO();

		System.out.println(year+"-"+month+"-"+date);	
		
		  Calendar cal = Calendar.getInstance();
		  
		  cal.set(year,month,date);
		  
		  SimpleDateFormat msdf = new SimpleDateFormat("yy/MM/dd");
		  
		  String dayday = msdf.format(cal.getTime());
		  
		  System.out.println("dayday>>"+dayday);
		  
		room_list = this.dao.cda_getRoomList(dayday);

		model.addAttribute("room_list", room_list);
		
		System.out.println("room_list>>" + room_list);
		
		model.addAttribute("roomno", roomno);

		System.out.println("roomno>>" +roomno);
		return "cda/reserve_roomOfDayList_ajax";	

	}
	
	//주중list(30%할인 적용)
	@RequestMapping("reserve_getInfo_weekday.do")
	public String getroomWeekday(@RequestParam("calYear") int year,@RequestParam("calMonth") int month,@RequestParam("calDate") int date, @RequestParam("roomno") int roomno, Model model) {
		List<CDA_roomDTO> room_list = new ArrayList<CDA_roomDTO>();

		CDA_roomDTO dto = new CDA_roomDTO();

		System.out.println("weekday>>"+year+"-"+month+"-"+date);	
		
		  Calendar cal = Calendar.getInstance();
		  
		  cal.set(year,month,date);
		  
		  SimpleDateFormat msdf = new SimpleDateFormat("yy/MM/dd");
		  
		  String dayday = msdf.format(cal.getTime());
		  

		  
		room_list = this.dao.cda_getRoomList(dayday);

		model.addAttribute("room_list", room_list);
		
		model.addAttribute("roomno", roomno);

		return "cda/reserve_roomOfDayList_weekday_ajax";	

	}
	
	
	//해당 날짜에 따른 객실 리스트 가져오기
		//주말 : 10% 할인
		@RequestMapping("reserve_getInfo_weekend1.do")
		public String getroomWeekendoff2(@RequestParam("calYear") int year,@RequestParam("calMonth") int month,@RequestParam("calDate") int date, Model model) {
			List<CDA_roomDTO> room_list = new ArrayList<CDA_roomDTO>();

			CDA_roomDTO dto = new CDA_roomDTO();

			System.out.println(year+"-"+month+"-"+date);	
			
			  Calendar cal = Calendar.getInstance();
			  
			  cal.set(year,month,date);
			  
			  SimpleDateFormat msdf = new SimpleDateFormat("yy/MM/dd");
			  
			  String dayday = msdf.format(cal.getTime());
			  
			  System.out.println("dayday>>"+dayday);
			  
			room_list = this.dao.cda_getRoomList(dayday);

			model.addAttribute("room_list", room_list);
			
			System.out.println("room_list>>" + room_list);
			

			return "cda/reserve_roomOfDayList_ajax";	

		}
	
	
	//주중list(30%할인 적용)
		@RequestMapping("reserve_getInfo_weekday1.do")
		public String getroomWeekdayoff(@RequestParam("calYear") int year,@RequestParam("calMonth") int month,@RequestParam("calDate") int date, Model model) {
			List<CDA_roomDTO> room_list = new ArrayList<CDA_roomDTO>();

			CDA_roomDTO dto = new CDA_roomDTO();

			System.out.println("weekday>>"+year+"-"+month+"-"+date);	
			
			  Calendar cal = Calendar.getInstance();
			  
			  cal.set(year,month,date);
			  
			  SimpleDateFormat msdf = new SimpleDateFormat("yy/MM/dd");
			  
			  String dayday = msdf.format(cal.getTime());
			  

			  
			room_list = this.dao.cda_getRoomList(dayday);

			model.addAttribute("room_list", room_list);
			

			return "cda/reserve_roomOfDayList_weekday_ajax";	

		}
	
	
	//결제 페이지로 이동
	@RequestMapping("reserve_payment.do")
	// @ResponseBody
	public String payment(Model model, CDA_reserveInfoDTO reserveInfoDTO, HttpServletRequest request, HttpServletResponse response) throws IOException {
		// @ModelAttribute : @RequestParam과 다르게

		List<CDA_roomDTO> roomList = new ArrayList<CDA_roomDTO>();
		
		for (CDA_reserveInfoDTO reservedto : reserveInfoDTO.getReserveInfoDTO()) {

	

			// 넘겨주는 것은 객실 리스트와 ㅈ
			// 룸번호에 해댕하는 값을 가져오기 DTO로 받아서 나중에 list에 넣는으로 하자
			

			System.out.println("list.getRoom_no()>>" + reservedto.getRoom_no());
			CDA_roomDTO roomdto = new CDA_roomDTO();
			roomdto = this.dao.cda_getreserveRoom((long) reservedto.getRoom_no());
			
			roomdto.setAddday(reservedto.getAddday());	
			roomdto.setAddpeople(reservedto.getAddpeople());
			roomdto.setAddprice(reservedto.getAddprice());
			roomdto.setRoom_price(reservedto.getDiscountprice());
			
			roomList.add(roomdto);

			
		}//for문 end

		
		
		//session으로 id 가져오기
		HttpSession session = request.getSession();
		
		
		String sessionId = (String) session.getAttribute("sessionID");
		System.out.println("sessionId>>" + sessionId);
		
		PrintWriter out = response.getWriter();
		
		if(sessionId==null) { //로그인이 안되어 있다면 roomlist만 넘어감
			
			 
		}else {
			//session으로 가져오 id로 회원 이름 전화번호 찾기
			CampMemberDTO sessionIddto = new CampMemberDTO();
			sessionIddto = this.dao.getsessionid(sessionId);
			model.addAttribute("sessionIddto", sessionIddto);
		}
					
		  //System.out.println("roomlist>>"+roomList);
		  //System.out.println("reserveList>>"+reserveList);		  
		 			
		 model.addAttribute("roomList",roomList);			 

		return "cda/reserve_payment";
	}
	
	//결제 완료 페이지
	@RequestMapping("reserve_confirm.do")
	public String reserve_confirm(Model model, HttpServletRequest request, HttpServletResponse response,
			CDA_paymentdetailDTO paymentdetailDTO, CDA_paymentDTO paymentDTO) throws IOException {
		//결제	
		
		HttpSession session = request.getSession();	
		String sessionId = (String) session.getAttribute("sessionID");	

		paymentDTO.setPayment_memno(this.dao.cda_getmemmo(sessionId));
		
		this.dao.cda_paymentConfirm(paymentDTO);
		
		//payment_no가져오기(마지막꺼)
		int payment_no = this.dao.cda_getpatmentno();
		
		paymentDTO.setPayment_no(payment_no);
		
		
		
		//결제 디테일
		List<CDA_paymentdetailDTO> detailDTOList = new ArrayList<CDA_paymentdetailDTO>();		
		for(CDA_paymentdetailDTO paymentdetilDTO: paymentdetailDTO.getPaymentdetailDTO()) {
	
			
			paymentdetilDTO.setPaymentDetail_paymentno(payment_no);
			this.dao.cda_reserveComfirmdetail(paymentdetilDTO);
			detailDTOList.add(paymentdetilDTO);
			
			
			//room테이블 room_poss 1으로 변경
			//System.out.println("roomno>>" +paymentdetilDTO.getPaymentDetail_roomno());
			int check = this.dao.cda_changeRoomToImpossi(paymentdetilDTO.getPaymentDetail_roomno());
			//System.out.println("check>>"+check);
			
			
		}			
		model.addAttribute("paymentDTO",paymentDTO );
		model.addAttribute("detailList",detailDTOList );
		

		return "cda/reserve_confirm";
		
	}
	
	
    // 예약 확인 페이지 연결
    @RequestMapping("reserve_info.do")
    public String reserve_info(Model model, HttpServletRequest request, HttpServletResponse response,
            @RequestParam("res_no") int res_no, @RequestParam("res_name") String res_name, @RequestParam("res_phone") String res_phone) throws IOException {

        int res = this.dao.resnoCheck(res_no);
        
        System.out.print(res);
        
        String phone1 = res_phone.substring(0,3);
        String phone2 = res_phone.substring(3,7);
        String phone3 = res_phone.substring(7,11);
        String phone = phone1 + "-" + phone2 + "-" + phone3;
        
        response.setContentType("text/html; charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        
        
        if(res == 0) {
            out.println("<script>");
            out.println("alert('예약 내역이 없습니다. 예약 번호를 확인해주세요.')");
            out.println("history.back()");
            out.println("</script>");
            
        }else {
            
            CDA_paymentDTO dto = this.dao.getpaymentInfo(res_no);
            
            if(dto.getPayment_pname().equals(res_name)) {
                
                if(dto.getPayment_pphone().equals(phone)) {
                    
                    CDA_paymentDTO dto1 = this.dao.getpaymentInfo(res_no);
                    List<CDA_paymentdetailDTO> dto2 = this.dao.getpaymentdetailInfo(res_no);
                    
                    model.addAttribute("paymentDTO",dto1 );
                    model.addAttribute("detailList",dto2 );
                    
                    return "cda/reserve_confirm";
                    
                }else {
                    out.println("<script>");
                    out.println("alert('휴대폰 번호를 확인해주세요.')");
                    out.println("history.back()");
                    out.println("</script>");
                    
                }
                
                
            }else {
                out.println("<script>");
                out.println("alert('작성한 이름을 확인해주세요.')");
                out.println("history.back()");
                out.println("</script>");

                
            }
        }
        
        
        return "kdc/reserveinfo";

    }
    
    
	
	
	//예약 취소
	@RequestMapping("reserve_cancel.do")
	@ResponseBody
	public void reservecancel(@RequestParam("paymentno") int paymentno) {
		
		//roomno가져오기
		List<Integer> roomnoList = new ArrayList<Integer>();
		
		roomnoList = this.dao.cda_getroomno(paymentno);
		System.out.println("roomList>"+roomnoList);
		for(int i=0; i<roomnoList.size(); i++) {
			System.out.println("roomnoList.get(i)>" +roomnoList.get(i));
			this.dao.cda_changeRoomToPossi(roomnoList.get(i));
		}
		
		System.out.println("paymentno>"+paymentno);
		//paymentdetail 삭제
		this.dao.cda_paymentDetailremCancel(paymentno);		
		
		//payment 삭제
		this.dao.cda_paymentCancel(paymentno);
	
		
	}
	
	

}
