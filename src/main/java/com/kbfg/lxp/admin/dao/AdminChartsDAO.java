package com.kbfg.lxp.admin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.admin.dto.AdminChartsBean;
import com.kbfg.lxp.admin.dto.AdminChartsRankBean;


@Component
public class AdminChartsDAO {
	JdbcTemplate template;
	
	@Autowired
	public AdminChartsDAO(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<AdminChartsBean> getDailySignups() {
	    String sql = "SELECT user_enrollYear AS enrollYear, COUNT(*) AS count " +
	                 "FROM user GROUP BY user_enrollYear ORDER BY user_enrollYear";
	    
	    RowMapper<AdminChartsBean> rowMapper = new RowMapper<AdminChartsBean>() {
	        @Override
	        public AdminChartsBean mapRow(ResultSet rs, int rowNum) throws SQLException {
	            AdminChartsBean bean = new AdminChartsBean();
	            bean.setEnrollYear(rs.getInt("enrollYear"));
	            bean.setCount(rs.getInt("count"));
	            return bean;
	        }
	    };
	    
	    return template.query(sql, rowMapper);
	}
	
	public List<AdminChartsRankBean> getSumbyRank() {
		String sql = "SELECT user_rank, count(*) AS count FROM user GROUP BY user_rank ORDER BY user_rank;";
		
		RowMapper<AdminChartsRankBean> rowMapper = new RowMapper<AdminChartsRankBean>() {
			@Override
			public AdminChartsRankBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				AdminChartsRankBean bean = new AdminChartsRankBean();
				bean.setUser_rank(rs.getString("user_rank"));
				bean.setCount(rs.getInt("count"));
				return bean;
			}
		};
		
		return template.query(sql, rowMapper);
	}
}