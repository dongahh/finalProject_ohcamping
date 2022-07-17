package com.pro.yuna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EtcController {

	@RequestMapping("camp_staff.do")
	public String join() {		
		return "member/camp_staff";
	}
}
