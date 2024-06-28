package com.kbfg.lxp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/tuition_refund")
public class TuitionRefundController {
	
	@RequestMapping("/tuition_refund")
	public String tuition_refundPage(Model model) {
		return "tuition_refund/tuition_refund";
	}
	
	@RequestMapping("/refundApplyList")
	public String refundApplyListPage(Model model) {
		return "tuition_refund/refundApplyList";
	}
	
}
