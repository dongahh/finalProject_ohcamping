package com.pro.kdc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class KdcController {

	@Autowired
	private campingDAO dao;
	
	@RequestMapping("calendar.do")
	public String calendar() {
		
		return "kdc/rescalendar";
	}
	
	
	@RequestMapping("payinfo.do")
	public String payinfo() {
		
		return "kdc/payinfo";
		
	}
	
	@RequestMapping("reserveinfo.do")
	public String reserveinfo() {
		
		return "kdc/reserveinfo";
	}
	
	@RequestMapping("calendar_iframe7.do")
	public String iframe7(Model model) {
		
		List<campingDTO> list = this.dao.getRoomList();
		
		model.addAttribute("List", list);
		
		return "kdc/calendar_iframe7";
	}
	
	@RequestMapping("calendar_iframe8.do")
	public String iframe8(Model model) {
		
		List<campingDTO> list = this.dao.getRoomList();
		
		model.addAttribute("List", list);
		
		return "kdc/calendar_iframe8";
	}
	
	
	@RequestMapping("maininfo.do")
	public String maininfo() {
		
		return "kdc/maininfo";
	}
	

	
}
