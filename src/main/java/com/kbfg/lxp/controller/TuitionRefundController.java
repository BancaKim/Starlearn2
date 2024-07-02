package com.kbfg.lxp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbfg.lxp.tuition_refund.command.getInfoTuition_refundCommand;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/tuition_refund")
public class TuitionRefundController {
	
	@RequestMapping("/tuition_refund_apply")
	public String tuition_refundPage(Model model) {
		getInfoTuition_refundCommand.execute(model);
		return "tuition_refund/tuition_refund_apply";
	}
	
	@RequestMapping("/refundApplyList")
	public String refundApplyListPage(Model model) {
		return "tuition_refund/refundApplyList";
	}
	
}
