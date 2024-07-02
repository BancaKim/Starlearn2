package com.kbfg.lxp.facility.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;

@Service
public class FacilityApplyCommand implements Command {
	@Autowired
	FacilityNoticeDAO noticedao;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		FacilityNoticeBean dto = noticedao.contentView(num);
		System.out.println("dto num"+dto.getFacility_notice_num());
		System.out.println("dto title"+dto.getFacility_notice_title());
		System.out.println("dto content"+dto.getFacility_notice_content());
		model.addAttribute("content_view", dto);

	 }
 }