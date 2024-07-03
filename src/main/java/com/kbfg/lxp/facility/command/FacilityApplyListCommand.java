package com.kbfg.lxp.facility.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityApplyDAO;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.facility.dto.FacilityApplyBean;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;
import com.kbfg.lxp.user.dao.UserDAO;
import com.kbfg.lxp.user.dto.UserBean;

@Service
public class FacilityApplyListCommand implements Command {
	
	@Autowired FacilityApplyDAO facilitydao;
	@Autowired UserDAO userdao;
	@Autowired UserBean userdata;
	@Autowired FacilityNoticeDAO noticedao;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		userdata= userdao.getUserData(user_id);
		String user_idn = userdata.getUser_idn();
        List<FacilityApplyBean> facilityApplyList = facilitydao.getAllFacilityApplies(user_idn);
        int listCount = facilitydao.getListCount(user_idn);
        
        ArrayList<FacilityNoticeBean> noticelist = noticedao.list();
        
        
        model.addAttribute("noticelist", noticelist);
        model.addAttribute("facilityApplyList", facilityApplyList);
        model.addAttribute("listCount", listCount);
        model.addAttribute("nextPage","facility/facility_apply_main");
	 }
 }