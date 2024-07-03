package com.kbfg.lxp.course;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;


public class CourseApplyView implements CourseCommand {
	
	@Override
	public void execute(Model model) throws Exception {

	
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		LocalDate today = LocalDate.now();
		
		
		DAO_Course dao = new DAO_Course();
		String user_idn = "1234";
		//		DTO_Course dto =new DTO_Course();
		

		List applyCourseList=new ArrayList();
//		applyCourseList= dao.applyList(today,user_idn);
		
		applyCourseList= dao.getAllCourses();

				
		
		System.out.println("dao.list().size()"+applyCourseList.size());

		request.setAttribute("applyCourseList", applyCourseList);

	}

	private List<LocalDate> getDatesBetween(LocalDate startDate, LocalDate endDate) {
		List<LocalDate> dates = new ArrayList<LocalDate>();
		LocalDate date = startDate;
		while (!date.isAfter(endDate)) {
			dates.add(date);
			date = date.plusDays(1);
		}
		return dates;
	}
}
