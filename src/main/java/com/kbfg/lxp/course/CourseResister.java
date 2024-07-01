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
public class CourseResister implements CourseCommand {
	@Override
	public void execute(Model model) throws Exception {

//		Map<String, Object> map = model.asMap();
//		HttpServletRequest request = (HttpServletRequest) map.get("request");
//
//		LocalDate today = LocalDate.now();
//		
//		System.out.println(request.getParameter("weekDate"));
//		
//		if (request.getParameter("weekDate") != null) {
//		
//		if (request.getParameter("direction").equals("prev")) {
//		    today = LocalDate.parse(request.getParameter("weekDate")).minusDays(1);
//		}
//		
//		else if (request.getParameter("direction").equals("next")) {
//		    today = LocalDate.parse(request.getParameter("weekDate")).plusDays(1);
//		}
//		
//		else if (request.getParameter("direction").equals("thisPage")) {
//		    today = LocalDate.parse(request.getParameter("weekDate"));
//		}
//		
//		}
//	
//		LocalDate monday = today.with(TemporalAdjusters.previousOrSame(DayOfWeek.MONDAY));
//		LocalDate sunday = today.with(TemporalAdjusters.nextOrSame(DayOfWeek.SUNDAY));
//
//		System.out.println("today"+today);
//		System.out.println("monday"+monday);
//		System.out.println("sunday"+sunday);
//		
//		
//
//		// courses?óê ?òà?ãú ?ç∞?ù¥?Ñ∞ Ï∂îÍ? (?ã§?†ú DB?óê?Ñú ?ç∞?ù¥?Ñ∞Î•? Í∞??†∏?ò§Í±∞ÎÇò ?ÑúÎπÑÏä§ ?ò∏Ï∂úÏùÑ ?Üµ?ï¥ ?ç∞?ù¥?Ñ∞Î•? Í∞??†∏???ïº ?ï®)
//
//		request.setAttribute("weekDates", weekDates);
//		request.setAttribute("today", today);
//
//	
	}

	
}
