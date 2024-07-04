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


public class CourseViewBooked implements CourseCommand {
	
	@Override
	public void execute(Model model) throws Exception {

	
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		
		LocalDate today = LocalDate.now();
		String user_idn = (String) session.getAttribute("userIdn");

		System.out.println(request.getParameter("weekDate"));


		request.setAttribute("today", today);
		
		
	
		DAO_Course dao = new DAO_Course();

//		List CourseList=new ArrayList();
		List myCourseList=new ArrayList();
		
//		CourseList= dao.list();
		
		myCourseList=new ArrayList();
		myCourseList=dao.getItemBooked(today, user_idn);
		int itemNum = myCourseList.size();
		
		System.out.println("dao.getItem().size()"+myCourseList.size());
		
	
		request.setAttribute("myCourseList", myCourseList);
		
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
