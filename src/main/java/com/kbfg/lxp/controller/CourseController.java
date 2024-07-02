package com.kbfg.lxp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.course.CourseCommand;
import com.kbfg.lxp.course.CourseViewAction;
import com.kbfg.lxp.user.util.Constant;

/**
 * s Handles requests for the application home page.
 */
@Controller
@RequestMapping("/course")
public class CourseController {

	private CourseCommand command;
	private JdbcTemplate template;

	@Autowired
	public CourseController(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}

	// View Course
	@RequestMapping("/courseView")
	public String showMyCourse(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("showMyCourse();");

		command = new CourseViewAction();
		command.execute(model);

		return "course/courseView"; // "ShoppingList.ba"
	}


	
	@RequestMapping(value = "/courseResister", method = RequestMethod.GET)
	public String signUp(Model model) {
		return "course/courseResister";
	}
	
	
	// coure resister action
	@RequestMapping("/signUpConfirm")
	public String CourseResister(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("showMyCourse();");

		command = new CourseViewAction();
		command.execute(model);

		return "course/courseView"; // "ShoppingList.ba"
	}
	
	

}

//	@RequestMapping("/courseView")
//	public String join(Member member) {
//		return "course/courseView";
//		
//	}
