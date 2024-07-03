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
public class FacilityNoticeModifyActionCommand implements Command {
	
	@Autowired FacilityNoticeDAO noticedao;
	@Autowired FacilityNoticeBean noticedata;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String noticeIdStr = request.getParameter("num");
		if (noticeIdStr == null || noticeIdStr.isEmpty()) {
            throw new IllegalArgumentException("Notice ID is required and cannot be null or empty");
        }
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println("num:"+num);
		
		
		try{
			noticedata.setFacility_notice_num(num);
			noticedata.setFacility_notice_title(request.getParameter("facility_notice_title"));
			noticedata.setFacility_notice_content(request.getParameter("facility_notice_content"));
			 
			 if(noticedao.modify(noticedata)==false){
		   		System.out.println("수정실패");
	   			model.addAttribute("nextPage","faciility/content_view?num="+num);
		   	 } else {
		   	 System.out.println("수정 성공");
		   	 model.addAttribute("message","수정 성공");
		   	 model.addAttribute("nextPage","facility/content_view?num="+num);
		   	 	}
			 }catch(Exception ex){
	   			ex.printStackTrace();	 
		 }
	 }
}