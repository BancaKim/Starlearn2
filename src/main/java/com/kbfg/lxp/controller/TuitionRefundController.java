package com.kbfg.lxp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.tuition_refund.command.AgoRefundListCommand;
import com.kbfg.lxp.tuition_refund.command.GetInfoTuition_refundCommand;
import com.kbfg.lxp.tuition_refund.command.RefundApplyListCommand;
import com.kbfg.lxp.tuition_refund.command.RefundListDetailCommand;
import com.kbfg.lxp.tuition_refund.command.Tuition_refundAddCommand;

@Controller
@RequestMapping("/tuition_refund")
public class TuitionRefundController {

	@Autowired GetInfoTuition_refundCommand getInfoTuition_refundCommand;
	@Autowired Tuition_refundAddCommand tuition_refundAddCommand;
	@Autowired RefundApplyListCommand refundApplyListCommand;
	@Autowired AgoRefundListCommand agoRefundListCommand;
	@Autowired RefundListDetailCommand refundListDetailCommand;
	
	@RequestMapping("/tuition_refund_apply")
	public String tuition_refundPage(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		getInfoTuition_refundCommand.execute(model);
		return "tuition_refund/tuition_refund_apply";
	}
	
	@RequestMapping("/tuition_refundAdd")
	public String tuition_refundAdd(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		tuition_refundAddCommand.execute(model);
		return "tuition_refund/tuition_refund_apply";
	}
	
	@RequestMapping("/refundApplyList")
	public String refundApplyListPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		refundApplyListCommand.execute(model);
		return "tuition_refund/refundApplyList";
	}
	
	@RequestMapping("/AgoRefundList")
	public String AgoRefundListPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		agoRefundListCommand.execute(model);
		return "tuition_refund/refundApplyList2";
	}
	
	@RequestMapping("/RefundListDetail")
	public String RefundListDetailPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		refundListDetailCommand.execute(model);
		return "tuition_refund/refundApplyDetail";
	}
	
	
}
