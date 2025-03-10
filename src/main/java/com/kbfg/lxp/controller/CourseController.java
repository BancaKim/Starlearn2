package com.kbfg.lxp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.course.ApplyDetailView;
import com.kbfg.lxp.course.CourseApplyView;
import com.kbfg.lxp.course.CourseCommand;
import com.kbfg.lxp.course.CourseResisterAction;
import com.kbfg.lxp.course.CourseViewAction;
import com.kbfg.lxp.course.CourseViewBooked;
import com.kbfg.lxp.course.MyCourseList;
import com.kbfg.lxp.course.StaticActionL3;
import com.kbfg.lxp.course.UserCourseCancerAction;
import com.kbfg.lxp.course.UserCourseResisterAction;
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

	// User's Course View
	@RequestMapping("/courseView")
	public String showMyCourse(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("showMyCourse();");
		command = new CourseViewAction();
		command.execute(model);

		return "course/courseView"; // "ShoppingList.ba"
	}
	
	// User's Applied Course View
	@RequestMapping("/myCourseList")
	public String myCourseList(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("myCourseList();");
		command = new MyCourseList();
		command.execute(model);

		return "course/myCourseList"; // "ShoppingList.ba"
	}
	
	
		// 취소 직전 확인
	@RequestMapping("/applyCancelView")
	public String applyCancelView(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("myCourseList();");
		command = new ApplyDetailView();
		command.execute(model);

		return "course/applyCancelView"; // "ShoppingList.ba"
	}
	
	
	
	// User's Course View 도래예정인 강의 명세 보기
	@RequestMapping("/courseViewBooked")
	public String courseViewBooked(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseViewBooked();");
		command = new CourseViewBooked();
		command.execute(model);

		return "course/courseViewBooked"; // "ShoppingList.ba"
	}

	
	
	// Admin's course resister
	@RequestMapping(value = "/courseResister", method = RequestMethod.GET)
	public String courseResister(Model model) {
		return "course/courseResister";
	}


	

	// coure resister action
	@RequestMapping("/courseResisterAction")
	public String courseResisterAction(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseResisterAction();");

		command = new CourseResisterAction();
		command.execute(model);

		Map<String, Object> map = model.asMap();
		String nextPage = (String) map.get("nextPage");

		return nextPage;

	}
	
	@RequestMapping("/courseAdminList")
	public String courseAdminList(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseDeleteView();");
//		command = new CourseAdminList();
//		command.execute(model);
		return "course/courseAdminList";
	}
	

	@RequestMapping("/courseApplyView")
	public String courseApplyView(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseApplyView();");

		command = new CourseApplyView();
		command.execute(model);

		return "course/courseApplyView";
	}

	@RequestMapping("/applyDetailView")
	public String applyDetailView(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("applyDetailView();");

		command = new ApplyDetailView();
		command.execute(model);

		return "course/applyDetailView";
	}

	@RequestMapping("/UserCourseResister")
	public String userCourseResister(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("userCourseResister();");

		command = new UserCourseResisterAction();
		command.execute(model);

		return "redirect:courseView";
	}
	
	
	@RequestMapping("/UserCourseCancer")
	public String userCourseCancer(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("userCourseCancer();");

		command = new UserCourseCancerAction();
		command.execute(model);

		return "redirect:courseView";
	}
	
	
	
	@RequestMapping("/courseStatic")
	public String courseStatic(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseStatic();");

		command = new StaticActionL3();
		command.execute(model);

		return "course/courseStatic";
	}

}

//	@RequestMapping("/courseView")
//	public String join(Member member) {
//		return "course/courseView";
//		
//	}
