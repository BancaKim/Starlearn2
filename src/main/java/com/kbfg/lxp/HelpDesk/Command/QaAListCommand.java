package com.kbfg.lxp.HelpDesk.Command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.HelpDesk.Dao.HelpDeskDao;
import com.kbfg.lxp.HelpDesk.Dto.HelpDeskDto;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.user.dao.UserDAO;

@Component
public class QaAListCommand implements Command  {
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired UserDAO userDao;
	@Autowired HelpDeskDao helpDeskDao;
	@Autowired HelpDeskDto helpDeskDto;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		int QaAListCount = helpDeskDao.QaAListCount();
		List<HelpDeskDto> QaAList = helpDeskDao.QaAList();
		
		model.addAttribute("QaAList", QaAList);
		model.addAttribute("QaAListCount", QaAListCount);
		
	}
	
}
