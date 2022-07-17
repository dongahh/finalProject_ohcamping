package com.pro.test;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pro.yuna.CampPopupDAO;
import com.pro.yuna.CampPopupDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private CampPopupDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(CampPopupDTO dto, Locale locale, Model model) {
		
		List<CampPopupDTO> list = this.dao.getCampPopupList();
		
		model.addAttribute("PopupList", list);
		
		return "main";
	}
	
	@RequestMapping("camp_main.do")
	public String main(CampPopupDTO dto, Locale locale, Model model) {
		
		List<CampPopupDTO> list = this.dao.getCampPopupList();
		
		model.addAttribute("PopupList", list);
		
		return "main";
	}
}
