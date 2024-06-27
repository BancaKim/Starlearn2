package src.main.java.com.kbfg.lxp.controller;

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
	
	@RequestMapping(value = "/tuition_refund", method = RequestMethod.GET)
	public String tuition_refundPage(Model model) {
		return "tuition_refund/tuition_refund";
	}
	
}
