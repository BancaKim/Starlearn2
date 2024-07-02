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
public class FacilityNoticeModifyCommand implements Command {
	
	@Autowired FacilityNoticeDAO noticedao;
	@Autowired FacilityNoticeBean noticedata;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int num = Integer.parseInt(request.getParameter("num"));
		
		
		try {
			noticedata = noticedao.contentView(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
			if(noticedata==null){
			   	System.out.println("불러오기 실패");
				model.addAttribute("nextPage","redirect:facility/facility_notice_view");
			} else {
			System.out.println("불러오기 성공");
			
			model.addAttribute("noticedata", noticedata);
			model.addAttribute("nextPage","redirect:facility/noticeModifyAction?num="+num);
			}
		}
	}