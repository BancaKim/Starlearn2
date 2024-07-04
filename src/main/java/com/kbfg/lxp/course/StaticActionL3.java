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


public class StaticActionL3 implements CourseCommand {
	
	@Override
	public void execute(Model model) throws Exception {

	
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
				
		String user_idn = (String) session.getAttribute("userIdn");
	
	
		DAO_courseStatic dao = new DAO_courseStatic();

		List courseStatic=new ArrayList();
		
//		CourseList= dao.list();
		

		courseStatic=dao.getReportData();
		System.out.println("courseStatic"+courseStatic.size());
	
		request.setAttribute("courseStatic", courseStatic);
		
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
