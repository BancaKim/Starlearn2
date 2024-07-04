package com.kbfg.lxp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbfg.lxp.HelpDesk.Command.QaAListCommand;
import com.kbfg.lxp.HelpDesk.Command.QaAListDetailCommand;
import com.kbfg.lxp.HelpDesk.Command.QnAInsetCommand;
import com.kbfg.lxp.HelpDesk.Command.QnAwriteViewCommand;
import com.kbfg.lxp.admin.command.RepalyInsertCommand;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/HelpDesk")
public class HelpDeskController {
	
	@Autowired QnAwriteViewCommand qnAwriteViewCommand;
	@Autowired QnAInsetCommand qnAInsetCommand;
	@Autowired QaAListCommand qaAListCommand;
	@Autowired QaAListDetailCommand qaAListDetailCommand;
	@Autowired RepalyInsertCommand repalyInsertCommand;
	
	@RequestMapping ("/QnA")
	public String QnAPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		qaAListCommand.execute(model);
		return "HelpDesk/QnA";
	}
	
	@RequestMapping("/introduceHR")
	public String introduceHRPage(Model model) {
		return "HelpDesk/introduceHR";
	}
	
	@RequestMapping("/HelpDeskNotice")
	public String HelpDeskNoticePage(Model model) {
		return "HelpDesk/HelpDeskNotice";
	}
	
	@RequestMapping("/QnAwriteView")
	public String QnAwriteViewPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		qnAwriteViewCommand.execute(model);
		return "HelpDesk/QnAWrite";
	}
	
	@RequestMapping("/QnAInset")
	public String QnAInsetPage(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		qnAInsetCommand.execute(model);
		return "HelpDesk/QnA";
	}
	
	@RequestMapping("/QaAListDetail")
	public String QaAListDetail(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		qaAListDetailCommand.execute(model);
		return "HelpDesk/QnADetail";
	}
	
	@RequestMapping("/adminReplay")
	public String replayInsert(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		repalyInsertCommand.execute(model);
		Map<String, Object> map = model.asMap();

	    String index = (String) map.get("index");
		return "redirect:QaAListDetail?";
	}

	
	
	
}
