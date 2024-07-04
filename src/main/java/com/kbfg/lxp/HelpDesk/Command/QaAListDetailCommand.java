package com.kbfg.lxp.HelpDesk.Command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.HelpDesk.Dao.HelpDeskDao;
import com.kbfg.lxp.HelpDesk.Dto.HelpDeskDto;
import com.kbfg.lxp.admin.dao.AdminReplayDAO;
import com.kbfg.lxp.admin.dto.AdminReplayBean;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.user.dao.UserDAO;

@Component
public class QaAListDetailCommand implements Command  {
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired UserDAO userDao;
	@Autowired HelpDeskDao helpDeskDao;
	@Autowired HelpDeskDto helpDeskDto;
	@Autowired AdminReplayBean adminReplayBean;
	@Autowired AdminReplayDAO adminReplayDao;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		String index = request.getParameter("index");
		List<HelpDeskDto> QaAListDetail = helpDeskDao.QaAListDetail(index);
		List<AdminReplayBean> QaAReplay = adminReplayDao.QaAReplay(index);
		
		
		
		model.addAttribute("QaAListDetail", QaAListDetail);
		model.addAttribute("replay", QaAReplay);
		model.addAttribute("index", index);
		model.addAttribute("name", "°ü¸®ÀÚ");

	}
}
