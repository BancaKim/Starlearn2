package com.kbfg.lxp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/HelpDesk")
public class HelpDestController {
	
	@RequestMapping("/QnA")
	public String tuition_refundPage(Model model) {
		return "HelpDesk/QnA";
	}
	

	
}
