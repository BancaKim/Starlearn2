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
public class IsHeManager implements Command {

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
			model.addAttribute("nextPage", "redirect:signIn");
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
			 model.addAttribute("nextPage", "home");
			}
		}
	}