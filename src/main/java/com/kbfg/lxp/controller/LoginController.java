package com.kbfg.lxp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.course.CourseCommand;
import com.kbfg.lxp.course.CourseViewBooked;
import com.kbfg.lxp.user.command.UserAddCommand;
import com.kbfg.lxp.user.command.UserLoginCommand;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	

	@Autowired UserLoginCommand userLoginCommand;
	@Autowired UserAddCommand userAddCommand;
	private CourseCommand command;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","home"}, method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String path = "";
		
		if (session.getAttribute("user_id")==null) {
			path = "redirect:signIn";
		} else {
			path = "home";
		}
		return path;
	}

	
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signIn(Model model) {
		return "login/signIn";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home";
	}
	
	@RequestMapping(value = "/signInConfirm", method = RequestMethod.POST)
	public String signInConfirm(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		userLoginCommand.execute(model);
		Map<String, Object> map = model.asMap();
		String nextPage = (String) map.get("nextPage");
		return nextPage;
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp(Model model) {
		return "login/signUp";
	}
	
	@RequestMapping(value = "/signUpConfirm", method = RequestMethod.POST)
	public String signUpConfirm(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		userAddCommand.execute(model);
		Map<String, Object> map = model.asMap();
		String nextPage = (String) map.get("nextPage");
		return nextPage;
	}
	
	@RequestMapping("/MyPage")
	public String MyPage(HttpServletRequest request, Model model) {
	
	model.addAttribute("request", request);
	System.out.println("courseViewBooked();");
//	command = new IsHeManager();
//	try {
//		command.execute(model);
//	} catch (Exception e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
			
	return "myPage";
	}

}
