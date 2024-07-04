package com.kbfg.lxp.course;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;

@Component
public class CountCourseCommand implements Command  {
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
	    String userIdn = (String) session.getAttribute("userIdn");
	 
	    DAO_UserCourses dAO_UserCourses = new DAO_UserCourses();
	    
	   int ing =dAO_UserCourses.countIng(userIdn);
	   int future = dAO_UserCourses.countFuture(userIdn);
	   int finish = dAO_UserCourses.countFinish(userIdn);
	   
	   model.addAttribute("ing", ing);
	   model.addAttribute("future", future);
	   model.addAttribute("finish", finish);
		
	}
	
}
