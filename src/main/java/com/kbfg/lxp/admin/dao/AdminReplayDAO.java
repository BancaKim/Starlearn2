package com.kbfg.lxp.admin.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.HelpDesk.Dto.HelpDeskDto;
import com.kbfg.lxp.admin.dto.AdminReplayBean;

@Component
public class AdminReplayDAO {
	JdbcTemplate template;
	
	@Autowired
	public AdminReplayDAO(JdbcTemplate template) {
		this.template = template;
	}

	public void QnAreplayInsert(String index, String replay) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO QNA_replay (" +
			     "question_index,content,date) VALUES (?, ?, CURRENT_DATE)";
		try {
				template.update(sql,index,replay); 
		}catch (Exception e) {
	        System.out.println("QnAreplayInsert");
	    }
		
		sql = "UPDATE QnA SET replyYN = 1 WHERE `index` = ?";
	    template.update(sql, index);

	}

	public List<AdminReplayBean> QaAReplay(String index) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from QNA_replay where deleteYN=0 and `question_index`=?;";

		 return template.query(sql, new BeanPropertyRowMapper<AdminReplayBean>(AdminReplayBean.class),index);

	}
	
	
}
