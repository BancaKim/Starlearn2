package com.kbfg.lxp.admin.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.admin.dao.AdminChartsDAO;
import com.kbfg.lxp.admin.dto.AdminChartsBean;

@Service
public class AdminChartsCommand implements Command {

	@Autowired AdminChartsDAO adminChartsDAO;
	@Autowired AdminChartsBean adminChartsBean;
	
	@Override
	public void execute(Model model) {
		List<AdminChartsBean> list = adminChartsDAO.getDailySignups();
		model.addAttribute("list",list);
	}

}
