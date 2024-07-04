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
public class UserLoginCommand implements Command {

	@Autowired
	UserDAO userDao;
	@Autowired
	UserBean userBean;

	@Override
	public void execute(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		Boolean isUser = userDao.isUser(user_id, user_pw);

		if (isUser == false) {
			model.addAttribute("isConfirm","no");
			model.addAttribute("message","비밀번호가 일치하지 않습니다.");
			model.addAttribute("nextPage", "alertSignInPage");
		} else {
			userBean = userDao.getUserData(user_id);

			 String userIdn = userDao.getUserIdn(user_id); 
			 String user_profilePath = userDao.getUserProfileImage(user_id);

			 HttpSession session = request.getSession();

			 session.setMaxInactiveInterval(60 * 30);
			 session.setAttribute("user_id", user_id);
			 session.setAttribute("userIdn", userIdn);
			 session.setAttribute("user_profile", user_profilePath);
			 
		 	 model.addAttribute("userBean", userBean);
			 model.addAttribute("message","로그인 성공");
			 model.addAttribute("nextPage", "home");
			}
		}
	}