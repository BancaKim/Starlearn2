package com.kbfg.lxp.controller;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.admin.command.AdminChartsCommand;
import com.kbfg.lxp.admin.command.AdminChartsRankCommand;
import com.kbfg.lxp.admin.command.AdminRefundApplyCommand;
import com.kbfg.lxp.admin.command.AdminTuition_refundListCommand;
import com.kbfg.lxp.admin.command.AdminUserDeleteCommand;
import com.kbfg.lxp.admin.command.AdminUserListCommand;
import com.kbfg.lxp.admin.command.RepalyInsertCommand;
import com.kbfg.lxp.course.CourseCommand;
import com.kbfg.lxp.course.StaticActionL3;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired AdminChartsCommand adminChartsCommand;
	@Autowired AdminChartsRankCommand adminChartsRankCommand;
	@Autowired AdminUserListCommand adminUserListCommand;
	@Autowired AdminUserDeleteCommand adminUserDeleteCommand;
	@Autowired AdminTuition_refundListCommand adminTuition_refundListCommand;
	@Autowired AdminRefundApplyCommand adminRefundApplyCommand;
	
	private CourseCommand command;

	@RequestMapping("/adminMain")
	public String adminMain(Model model) {
		return "admin/adminMain";
	}
	
	@RequestMapping("/adminReplay")
	public String replayInsert(Model model) {
		return "admin/replay";
		}

	@RequestMapping("/adminCharts")
	public String adminCharts(Model model) {
		adminChartsCommand.execute(model);
		adminChartsRankCommand.execute(model);
		
		command = new StaticActionL3();
		try {
			command.execute(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "admin/adminCharts";		
	}
	
	@RequestMapping("/adminUserList")
	public String adminUserList(Model model) {
		adminUserListCommand.execute(model);
		return "admin/adminUserList";

	}
	
	
	@RequestMapping("/adminDelete")
	public String adminDelete(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		adminUserDeleteCommand.execute(model);
		return "redirect:adminUserList";
	}
	
	@RequestMapping("/adminTuition_refundList")
	public String adminTuition_refundList(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		adminTuition_refundListCommand.execute(model);
		return "admin/adminTuition_refundList";
	}
	
	@RequestMapping("/refundApply")
	public String adminRefundApply(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		adminRefundApplyCommand.execute(model);
		return "redirect:adminTuition_refundList";
	}
}
