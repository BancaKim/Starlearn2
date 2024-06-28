package com.kbfg.lxp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/course")
public class CourseController {
	
	@RequestMapping(value = "/courseView", method = RequestMethod.GET)
	public String faciltyApply(Model model) {
		return "course/courseView";
	}
	
	@RequestMapping(value="/courseApply")
	public String notice(Model model) {
		return "course/courseApply";
	}
	
}
