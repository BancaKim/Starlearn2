package com.kbfg.lxp.course;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public class ApplyDetailView implements CourseCommand {

	@Override
	public void execute(Model model) throws Exception {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		LocalDate today = LocalDate.now();
		DAO_Course dao = new DAO_Course();
		DTO_Course courseDetail = new DTO_Course();
		String user_idn = (String) session.getAttribute("userIdn");
		String course_ref = request.getParameter("course_ref");
//		System.out.println("course_ref" + course_ref);

		
		
		courseDetail = dao.getCourseById(course_ref);

		request.setAttribute("courseDetail", courseDetail);
		request.setAttribute("today", today);
//		System.out.println(courseDetail.getCourse_name());
	}

}
