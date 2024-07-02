package com.kbfg.lxp.tuition_refund.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.user.dao.UserDAO;
import com.kbfg.lxp.user.dto.UserBean;

@Component
public class GetInfoTuition_refundCommand implements Command {
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired UserDAO userDao;
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
	    String user_id = (String) session.getAttribute("user_id");

	    UserBean userBean = tuitionDao.getUserInfo(user_id); 
	    String info = userBean.getUser_dept() + " " + userBean.getUser_rank() + " " +
	            	  userBean.getUser_position() + " " + userBean.getUser_name() + " | " + userBean.getUser_idn();
	    
	    model.addAttribute("info", info);
	        
		
		
	}

}
