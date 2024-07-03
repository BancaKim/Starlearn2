package com.kbfg.lxp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/adminMain")
	public String adminMain(Model model) {
		return "admin/adminMain";
	}
}
