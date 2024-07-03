package com.kbfg.lxp.user.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.user.dto.UserBean;

@Component
public class UserDAO {   
	JdbcTemplate template;
	
	@Autowired
	public UserDAO(JdbcTemplate template) {
		this.template = template;
	}
	
	public boolean isUser(String user_id, String user_pw) {

	    String sql = "SELECT COUNT(*) FROM user WHERE user_id=? AND user_pw=?";
		int result=0;

        try {
		result = template.queryForObject(sql, Integer.class, user_id, user_pw);
        } catch (EmptyResultDataAccessException e) {
            return false;
       }
        System.out.println("isUser result:" + result);
        return result > 0;
    }
	
	public boolean hasUser(String user_id) {
		String sql = "SELECT COUNT(*) FROM user WHERE user_id=?";
		int result=0;
		
		try {
		result = template.queryForObject(sql, Integer.class, user_id);
		 } catch (EmptyResultDataAccessException e) {
            return false;
        }
	        
		System.out.println("hasUser result:"+result);
        return result > 0;
    }
	
	public boolean insertUser(UserBean userdata) {

		String sql = "INSERT INTO user (user_id, user_name, user_pw, user_idn, user_rank, user_position, user_dept, user_ph, user_birthYear, user_birthMonth, user_birthDay, user_enrollYear, user_profile, user_isAdmin) " +
                	 "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int result = 0;
		System.out.println("inside insertUser userId:"+userdata.getUser_id());
		 result = template.update(sql,
                 userdata.getUser_id(),
                 userdata.getUser_name(),
                 userdata.getUser_pw(),
                 userdata.getUser_idn(),
                 userdata.getUser_rank(),
                 userdata.getUser_position(),
                 userdata.getUser_dept(),
                 userdata.getUser_ph(),
                 userdata.getUser_birthYear(),
                 userdata.getUser_birthMonth(),
                 userdata.getUser_birthDay(),
                 userdata.getUser_enrollYear(),
                 userdata.getUser_profile(),
                 userdata.getUser_isAdmin());
		 
		System.out.println("insertUser result:"+result);
		
		 return result > 0;
	}

    public UserBean getUserData(String user_id) {
        String sql = "SELECT * FROM user WHERE user_id = ?";
        
        try {
            return (UserBean) template.queryForObject(sql, new BeanPropertyRowMapper(UserBean.class), user_id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    public List<UserBean> getAllUserData() {
    	String sql = "SELECT * FROM user";
    	
    	try {
    		return template.query(sql, new BeanPropertyRowMapper(UserBean.class));
    	} catch (EmptyResultDataAccessException e) {
    		return null;
    	}
    }

    public int getUserCount() {
        String sql = "SELECT COUNT(*) FROM user";
        try {
            return template.queryForObject(sql, Integer.class);
        } catch (EmptyResultDataAccessException e) {
            return 0;
        }
    }

//    public List<UserBean> getUserList(int page, int limit) {
//        String sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER() rnum, user_id, user_pw, email, user_name, ssn, introduction FROM (SELECT * FROM user ORDER BY user_id) AS s) AS u WHERE rnum >= ? AND rnum <= ?";
//        int startrow = (page - 1) * 10 + 1;
//        int endrow = startrow + limit - 1;
//        return template.query(sql, new BeanPropertyRowMapper(UserBean.class), startrow, endrow);
//    }

    public UserBean getDetail(String user_id) {
        String sql = "SELECT * FROM user WHERE user_id = ?";
        try {
            return (UserBean) template.queryForObject(sql, new BeanPropertyRowMapper(UserBean.class), user_id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public boolean userDelete(String user_id) {
        String sql = "DELETE FROM user WHERE user_id = ?";
        int result = template.update(sql, user_id);
        return result > 0;
    }
    
    public String getUserIdn(String user_id) {
        String sql = "SELECT user_idn FROM user WHERE user_id = ?";
        String userIdn = "";

        try {
            // Execute query and map result to a single string
            userIdn = template.queryForObject(sql,String.class,user_id); // Pass user_id as parameter
        } catch (EmptyResultDataAccessException e) {
            // Handle case where no user with given user_id is found
        	userIdn = ""; // or handle as needed
        }

        return userIdn;
   }
    
    public String getUserProfileImage(String user_id) {
    	String filePath = null;
    	String sql = "SELECT user_profile FROM user WHERE user_id = ?";
    	filePath = template.queryForObject(sql,String.class,user_id);
    	return filePath;
    	
    }
}