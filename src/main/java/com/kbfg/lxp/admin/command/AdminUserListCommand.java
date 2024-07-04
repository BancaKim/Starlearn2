package com.kbfg.lxp.admin.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.admin.dto.AdminChartsBean;
import com.kbfg.lxp.user.dao.UserDAO;
import com.kbfg.lxp.user.dto.UserBean;

@Service
public class AdminUserListCommand implements Command {

	@Autowired UserDAO userDAO;
	@Autowired UserBean userBean;
	
	@Override
	public void execute(Model model) {
		List<UserBean> userlist = userDAO.getAllUserData();
		model.addAttribute("userlist",userlist);
	}

}
