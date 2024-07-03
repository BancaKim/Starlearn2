package com.kbfg.lxp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.admin.command.AdminChartsCommand;
import com.kbfg.lxp.admin.command.AdminChartsRankCommand;
import com.kbfg.lxp.admin.command.AdminUserListCommand;
import com.kbfg.lxp.admin.command.RepalyInsertCommand;

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
