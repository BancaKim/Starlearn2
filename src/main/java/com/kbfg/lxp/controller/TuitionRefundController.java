package com.kbfg.lxp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.tuition_refund.command.GetInfoTuition_refundCommand;

@Controller
@RequestMapping("/tuition_refund")
public class TuitionRefundController {
	
	@Autowired GetInfoTuition_refundCommand getInfoTuition_refundCommand;
	
	@RequestMapping("/tuition_refund_apply")
	public String tuition_refundPage(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		getInfoTuition_refundCommand.execute(model);
		return "tuition_refund/tuition_refund_apply";
	}
	
	@RequestMapping("/refundApplyList")
	public String refundApplyListPage(Model model) {
		return "tuition_refund/refundApplyList";
	}
	
}
