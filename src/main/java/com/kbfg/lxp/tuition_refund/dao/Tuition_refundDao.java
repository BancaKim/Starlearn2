package com.kbfg.lxp.tuition_refund.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.user.dto.UserBean;

@Component
public class Tuition_refundDao {

	JdbcTemplate template;
		
	@Autowired
	public Tuition_refundDao(JdbcTemplate template) {
		this.template = template;
	}
		
	
	public UserBean getUserInfo(String user_id) {
	    String sql = "SELECT * FROM user WHERE user_id = ?";
	    try {
	        return template.queryForObject(sql, new BeanPropertyRowMapper<>(UserBean.class), user_id);
	    } catch (EmptyResultDataAccessException e) {
	        System.out.println("해당 user_id에 대한 정보가 없습니다: " + user_id);
	    }
	    return null;
	}

	



}
