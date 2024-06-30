package com.kbfg.lxp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/facility")
public class FacilityController {
	
	@RequestMapping(value = "/apply_main", method = RequestMethod.GET)
	public String faciltyApply(Model model) {
		return "facility/facility_apply_main";
	}
	
	@RequestMapping(value="/notice_view")
	public String notice(Model model) {
		return "facility/noticeView";
	}
	
	@RequestMapping(value="/notice_write")
	public String noticeWrite(Model model) {
		return "facility/noticeWrite";
	}
}
