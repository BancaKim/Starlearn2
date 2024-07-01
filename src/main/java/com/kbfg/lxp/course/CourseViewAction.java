package com.kbfg.lxp.course;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;


@Component
public class CourseViewAction implements CourseCommand {
	@Override
	public void execute(Model model) throws Exception {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		LocalDate today = LocalDate.now();

		System.out.println(request.getParameter("weekDate"));

		if (request.getParameter("weekDate") != null) {
			if (request.getParameter("direction").equals("prev")) {
				today = LocalDate.parse(request.getParameter("weekDate")).minusDays(1);
			}

			else if (request.getParameter("direction").equals("next")) {
				today = LocalDate.parse(request.getParameter("weekDate")).plusDays(1);
			}

			else if (request.getParameter("direction").equals("thisPage")) {
				today = LocalDate.parse(request.getParameter("weekDate"));
			}
		}

		LocalDate monday = today.with(TemporalAdjusters.previousOrSame(DayOfWeek.MONDAY));
		LocalDate sunday = today.with(TemporalAdjusters.nextOrSame(DayOfWeek.SUNDAY));

		System.out.println("today" + today);
		System.out.println("monday" + monday);
		System.out.println("sunday" + sunday);

		List<LocalDate> weekDates = getDatesBetween(monday, sunday);

		request.setAttribute("weekDates", weekDates);
		request.setAttribute("today", today);
		
		DAO_Course dao = new DAO_Course();
		
		System.out.println(dao.list());
	
		

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

//	public static String getKoreanDayOfWeek(DayOfWeek dayOfWeek) {
//		switch (dayOfWeek) {
//		case MONDAY:
//			return "월";
//		case TUESDAY:
//			return "화";
//		case WEDNESDAY:
//			return "수";
//		case THURSDAY:
//			return "목";
//		case FRIDAY:
//			return "금";
//		case SATURDAY:
//			return "토";
//		case SUNDAY:
//			return "일";
//		default:
//			return "";
//		}
//	}
}
