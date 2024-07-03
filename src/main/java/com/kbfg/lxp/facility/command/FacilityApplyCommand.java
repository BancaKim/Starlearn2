package com.kbfg.lxp.facility.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.user.dao.UserDAO;
import com.kbfg.lxp.user.dto.UserBean;

@Service
public class FacilityApplyCommand implements Command {
	
	@Autowired FacilityNoticeDAO noticedao;
	@Autowired UserDAO userdao;
	@Autowired UserBean userdata;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		userdata= userdao.getUserData(user_id);
		
		String trainingCenter = request.getParameter("trainingCenter");
			System.out.println("trainingCenter:"+trainingCenter);
		String roomType = request.getParameter("roomType");
			System.out.println("roomType:"+roomType);
		String startDate = request.getParameter("startDate");
			System.out.println("startDate:"+startDate);
		String endDate = request.getParameter("endDate");
			System.out.println("endDate:"+endDate);

		String user_name = userdata.getUser_name();
		String userIdn = userdata.getUser_idn();
		System.out.println("userIdn:"+userIdn);		
		
		model.addAttribute("trainingCenter", trainingCenter);
		model.addAttribute("roomType", roomType);
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
		model.addAttribute("userIdn", userIdn);
		model.addAttribute("user_name", user_name);

	 }
 }