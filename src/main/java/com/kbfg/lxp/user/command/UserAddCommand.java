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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class UserAddCommand implements Command {
	
	@Autowired UserBean userdata;
	@Autowired UserDAO userDao;
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String realFolder="";
   		String saveFolder="/userupload";
		
   		int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		boolean result=false;
   		
   		try{
   			MultipartRequest multi=null;
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"utf-8",
   					new DefaultFileRenamePolicy());
   			
			userdata.setUser_id(multi.getParameter("user_id"));
			userdata.setUser_name(multi.getParameter("user_name"));
			userdata.setUser_pw(multi.getParameter("user_pw"));
			userdata.setUser_idn(multi.getParameter("user_idn"));
			userdata.setUser_rank(multi.getParameter("user_rank"));
			userdata.setUser_position(multi.getParameter("user_position"));
			userdata.setUser_dept(multi.getParameter("user_dept"));
			userdata.setUser_ph(multi.getParameter("user_ph"));
			userdata.setUser_birthYear(multi.getParameter("user_birthYear"));
			userdata.setUser_birthMonth(multi.getParameter("user_birthMonth"));
			userdata.setUser_birthDay(multi.getParameter("user_birthDay"));
			userdata.setUser_enrollYear(multi.getParameter("user_enrollYear"));
			userdata.setUser_profile(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			
			Boolean hasUser = userDao.hasUser(userdata.getUser_id());
			String user_id = userdata.getUser_id();
			
			if(hasUser==false) {
				if(userDao.insertUser(userdata)) {
					HttpSession session = request.getSession();
					session.setAttribute("user_id", user_id);
					session.setMaxInactiveInterval(60 * 30);
					model.addAttribute("message", "�쉶�썝媛��엯 �꽦怨�");
					model.addAttribute("nextPage", "redirect:home");
				} else {
					model.addAttribute("message", "�쉶�썝媛��엯 �떎�뙣! DB �삤瑜�");
					model.addAttribute("nextPage", "redirect:signUp");
				}
			} else {
				model.addAttribute("message", "以묐났�맂 �븘�씠�뵒�엯�땲�떎!");
				model.addAttribute("nextPage", "redirect:signUp");
			}
   		} catch (Exception ex) {
   			ex.printStackTrace();
   		}
	}
}