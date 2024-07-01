package com.kbfg.lxp.user.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.user.dao.UserDAO;
import com.kbfg.lxp.user.dto.UserBean;

@Service
public class UserAddCommand implements Command {
	
	@Autowired UserBean userdata;
	@Autowired UserDAO userDao;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int user_num = Integer.parseInt(request.getParameter("user_num"));
		userdata.setUser_id(request.getParameter("user_id"));
		String user_name = request.getParameter("user_name");
		String user_pw = request.getParameter("user_pw");
		String user_idn = request.getParameter("user_idn");
		String user_rank = request.getParameter("user_rank");
		String user_position = request.getParameter("user_position");
		String user_dept = request.getParameter("user_dept");
		String user_ph = request.getParameter("user_ph");
		String user_birthYear = request.getParameter("user_birthYear");
		String user_birthMonth = request.getParameter("user_birthMonth");
		String user_birthDay = request.getParameter("user_birthDay");
		String user_enrollYear = request.getParameter("user_enrollYear");
		String user_profile = request.getParameter("user_profile");
		
		Boolean hasUser = userDao.hasUser(user_id);
		
		if(hasUser==false) {
				if(userDao.insertUser(userdata)) {
					HttpSession session = request.getSession();
					session.setAttribute("user_id", user_id);
					session.setMaxInactiveInterval(60 * 30);
					model.addAttribute("message", "회원가입 성공");
					model.addAttribute("nextPage", "redirect:home");
				} else {
					model.addAttribute("message", "회원가입 실패! DB 오류");
					model.addAttribute("nextPage", "redirect:signUp");
				}
			} else {
				model.addAttribute("message", "중복된 아이디입니다!");
				model.addAttribute("nextPage", "redirect:signUp");
			};
		}
	}
	