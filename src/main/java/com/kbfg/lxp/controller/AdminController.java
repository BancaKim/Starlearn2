package com.kbfg.lxp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.admin.command.AdminChartsCommand;
import com.kbfg.lxp.admin.command.AdminChartsRankCommand;
import com.kbfg.lxp.admin.command.AdminUserListCommand;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired AdminChartsCommand adminChartsCommand;
	@Autowired AdminChartsRankCommand adminChartsRankCommand;
	@Autowired AdminUserListCommand adminUserListCommand;
	
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
		return "admin/adminCharts";
	}
	
	@RequestMapping("/adminUserList")
	public String adminUserList(Model model) {
		adminUserListCommand.execute(model);
		return "admin/adminUserList";

	}
}
