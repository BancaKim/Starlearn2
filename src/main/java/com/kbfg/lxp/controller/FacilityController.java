package com.kbfg.lxp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.facility.command.FacilityApplyCommand;
import com.kbfg.lxp.facility.command.FacilityContentCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeAddCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeDeleteCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeListCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeModifyActionCommand;
import com.kbfg.lxp.facility.command.FacilityNoticeModifyCommand;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/facility")
public class FacilityController {
	@Autowired FacilityNoticeListCommand facilityNoticeListCommand;
	@Autowired FacilityContentCommand facilityContentCommand;
	@Autowired FacilityNoticeAddCommand facilityNoticeAddCommand;
	@Autowired FacilityNoticeDeleteCommand facilityNoticeDeleteCommand;
	@Autowired FacilityNoticeModifyCommand facilityNoticeModifyCommand;
	@Autowired FacilityNoticeModifyActionCommand facilityNoticeModifyActionCommand;
	@Autowired FacilityApplyCommand facilityApplyCommand;
	
	@RequestMapping(value = "/apply_main", method = RequestMethod.GET)
	public String faciltyApply(Model model) {
		return "facility/facility_apply_main";
	}
	
	@RequestMapping("/notice_view")
	public String notice(Model model) {
		facilityNoticeListCommand.execute(model);
		return "facility/facility_notice_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request, Model model){
		System.out.println("content_view()");
		model.addAttribute("request", request);
		facilityContentCommand.execute(model);
		
		return "facility/facility_content_view";
	}
	
	
	@RequestMapping("/notice_write")
	public String noticeWrite(Model model) {
		return "facility/facility_notice_write";
	}
	
	@RequestMapping("/noticeAddAction")
	public String noticeAdd(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		facilityNoticeAddCommand.execute(model);
		
		String nextPage = "redirect:notice_view";
		return nextPage;
	}
	
	@RequestMapping("/notice_modify")
	public String noticeModify(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		facilityNoticeModifyCommand.execute(model);

		Map<String, Object> map = model.asMap();
		String nextPage = (String) map.get("nextPage");
		return nextPage;
	}
	
	@RequestMapping("/noticeModifyAction")
	public String noticeModifyAction(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		facilityNoticeModifyActionCommand.execute(model);

		Map<String, Object> map = model.asMap();
		String nextPage = (String) map.get("nextPage");
		return nextPage;
	}
	
	@RequestMapping("/notice_delete")
	public String noticeDelete(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		facilityNoticeDeleteCommand.execute(model);
		return "redirect:notice_view";
	}
	
	@RequestMapping("/facilityApplyForm")
	public String facilityApplyForm(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		return "facility/facility_apply_write";
	}
}
