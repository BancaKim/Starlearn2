package com.kbfg.lxp.course;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;


public class UserCourseCancerAction implements CourseCommand {
	
	@Override
	public void execute(Model model) throws Exception {

	
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		
		
		String user_idn = (String)session.getAttribute("userIdn");
		String course_ref = (String)request.getParameter("course_ref");

		System.out.println("cancer action course_ref"+course_ref);
		DAO_UserCourses dao = new DAO_UserCourses();
//		DTO_Course dto =new DTO_Course();
		
	
		dao.cancelUserCourse(user_idn, course_ref);

		
		
	}

	
}
