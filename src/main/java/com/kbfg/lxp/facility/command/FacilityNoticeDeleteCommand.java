
package com.kbfg.lxp.facility.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class FacilityNoticeDeleteCommand implements Command {

	@Autowired FacilityNoticeDAO noticedao;
	@Autowired FacilityNoticeBean noticedata;
	
	@Override
	public void execute(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
	   	
		int num=Integer.parseInt(request.getParameter("num"));
		boolean result=noticedao.delete(num);
	   	if(result==false) {
		   	System.out.println("에러 발생");
	   		model.addAttribute("nextPage","redirect:facility/facility_notice_view");
	   		} else {
		   	System.out.println("삭제 성공");
	   		model.addAttribute("nextPage","redirect:facility/facility_notice_view");
	   		}
	   	}
}