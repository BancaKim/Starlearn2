package com.kbfg.lxp.HelpDesk.Command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.HelpDesk.Dao.HelpDeskDao;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.user.dao.UserDAO;

@Component
public class QnAInsetCommand implements Command  {
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired UserDAO userDao;
	@Autowired HelpDeskDao helpDeskDao;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
	    String userIdn = (String) session.getAttribute("userIdn");
	    
	    String QnAtitle = request.getParameter("QnAtitle");
	    String content = request.getParameter("content");
	    String dp = request.getParameter("dp");
	    String user_name = request.getParameter("user_name");
	    String categori = request.getParameter("categori");
	    
	    System.out.println(request.getParameter("QnAtitle"));
	    System.out.println(request.getParameter("content"));
	    System.out.println(request.getParameter("dp"));
	    System.out.println(request.getParameter("user_name"));
	    System.out.println(request.getParameter("categori"));
	    
	    
	    boolean result = helpDeskDao.InsetQnA(userIdn,QnAtitle,content,dp,user_name, categori);
	    if(result) {
	    	System.out.println("qna등록 성공");
	    }else {
	    	System.out.println("qna등록 실패");
	    }

	}
    


}
