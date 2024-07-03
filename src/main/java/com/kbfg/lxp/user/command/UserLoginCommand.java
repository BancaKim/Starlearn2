package com.kbfg.lxp.user.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.user.dao.UserDAO;

@Service
public class UserLoginCommand implements Command {
	
	@Autowired UserDAO userDao;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		Boolean isUser = userDao.isUser(user_id, user_pw);
		

		if(isUser==false) {
			model.addAttribute("message", "濡쒓렇�씤 �떎�뙣!");
			model.addAttribute("nextPage", "redirect:signIn");
		} else {
			String userIdn = userDao.getUserIdn(user_id);
			String user_profilePath = userDao.getUserProfileImage(user_id);
			
			HttpSession session = request.getSession();
			session.setAttribute("user_id", user_id);
			session.setAttribute("userIdn", userIdn);
			session.setAttribute("user_profile", user_profilePath);
			
			session.setMaxInactiveInterval(60 * 30);
				if (user_id.equals("admin") && user_pw.equals("1234")) {
				model.addAttribute("message", "로그인 성공");
				model.addAttribute("nextPage", "home");
			} else {
				model.addAttribute("message", "로그인 성공");
				model.addAttribute("nextPage", "home");
				}
			}
		}
	}