package com.kbfg.lxp.controller;

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
@RequestMapping("/HRD")
public class HRDController {
	@Autowired FacilityNoticeListCommand facilityNoticeListCommand;
	@Autowired FacilityContentCommand facilityContentCommand;
	
	@RequestMapping(value = "/HRD_CLOUD", method = RequestMethod.GET)
	public String faciltyApply(Model model) {
		return "HRD/HRD_CLOUD";
	}
	
	
}
