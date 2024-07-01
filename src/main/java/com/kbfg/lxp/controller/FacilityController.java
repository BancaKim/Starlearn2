package com.kbfg.lxp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.facility.command.FacilityContentCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeListCommand;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/facility")
public class FacilityController {
	@Autowired FacilityNoticeListCommand facilityNoticeListCommand;
	@Autowired FacilityContentCommand facilityContentCommand;
	
	@RequestMapping(value = "/apply_main", method = RequestMethod.GET)
	public String faciltyApply(Model model) {
		return "facility/facility_apply_main";
	}
	
	@RequestMapping(value="/notice_view")
	public String notice(Model model) {
		facilityNoticeListCommand.execute(model);
		return "facility/facility_notice_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request, Model model){
		System.out.println("content_view()");
		model.addAttribute("request", request);
		facilityContentCommand.execute(model);
		
		return "facility_content_view";
	}
	
	
	@RequestMapping(value="/notice_write")
	public String noticeWrite(Model model) {
		return "facility/facility_notice_write";
	}
}
