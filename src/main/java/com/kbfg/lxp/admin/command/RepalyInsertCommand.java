package com.kbfg.lxp.admin.command;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.admin.dao.AdminReplayDAO;
import com.kbfg.lxp.admin.dto.AdminReplayBean;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;

@Component
public class RepalyInsertCommand  implements Command  {
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired AdminReplayBean replayBean;
	@Autowired AdminReplayDAO replayDao;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpServletResponse response = (HttpServletResponse) map.get("response");
		
		String index = request.getParameter("index");
		String replay = request.getParameter("replay");
		
		replayDao.QnAreplayInsert(index,replay);
		model.addAttribute("index", index);
		
		
	}


}
