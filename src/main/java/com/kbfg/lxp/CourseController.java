package com.kbfg.lxp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.course.CourseCommand;
import com.kbfg.lxp.course.CourseViewAction;


/**s
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/course")
public class CourseController {

	CourseCommand command = null;
	
	// 코스 보기
	@RequestMapping("/courseView")
	public String showMyCourse(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("showMyCourse();");

		command = new CourseViewAction();
		command.execute(model);
	
		return "course/courseView"; //"ShoppingList.ba"
	}
	
	
	// 코스 보기
	@RequestMapping("/courseResister")
	public String CourseResister(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		System.out.println("courseResister();");
//
//		command = new CourseResister();
//		command.execute(model);
	
		return "course/courseResister"; //"ShoppingList.ba"
	}
	

	}
	
	

	
	

//	@RequestMapping("/courseView")
//	public String join(Member member) {
//		return "course/courseView";
//		
//	}
	

