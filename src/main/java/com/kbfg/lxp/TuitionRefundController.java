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
	
	@RequestMapping("/tuition_refund_apply")
	public String tuition_refundPage(Model model) {
		System.out.println("¿Ó½î ¸®ÆÝ");
		return "tuition_refund/tuition_refund_apply";
	}
	
	@RequestMapping("/refundApplyList")
	public String refundApplyListPage(Model model) {
		System.out.println("¿Ó½î ¸®½ºÆ®");
		return "tuition_refund/refundApplyList";
	}
	
}
