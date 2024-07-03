package com.kbfg.lxp.admin.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.admin.dao.AdminChartsDAO;
import com.kbfg.lxp.admin.dto.AdminChartsRankBean;

@Service
public class AdminChartsRankCommand implements Command {

	@Autowired AdminChartsDAO adminChartsDAO;
	@Autowired AdminChartsRankBean adminChartsRankBean;
	
	@Override
	public void execute(Model model) {
		List<AdminChartsRankBean> ranklist = adminChartsDAO.getSumbyRank();
		model.addAttribute("ranklist",ranklist);
	}

}
