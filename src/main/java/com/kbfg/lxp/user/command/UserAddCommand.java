package com.kbfg.lxp.user.command;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;

@Service
public class UserAddCommand implements Command {
	@Autowired
	FacilityNoticeDAO noticedao;
	
	@Override
	public void execute(Model model) {
		
		ArrayList<FacilityNoticeBean> dtos = noticedao.list();
		model.addAttribute("list",dtos);

	 }
 }