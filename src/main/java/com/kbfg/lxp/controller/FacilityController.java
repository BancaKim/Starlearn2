package src.main.java.com.kbfg.lxp.controller;

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
	
}
