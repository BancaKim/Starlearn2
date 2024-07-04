package com.kbfg.lxp.HelpDesk.Dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.HelpDesk.Dto.HelpDeskDto;

@Component
public class HelpDeskDao{

	JdbcTemplate template;
		
	@Autowired
	public HelpDeskDao(JdbcTemplate template) {
		this.template = template;
	}

	public boolean InsetQnA(String user_Idn, String qnAtitle, String content, String dp, String user_name, String categori) {
		// TODO Auto-generated method stub
		  String sql = "INSERT INTO QnA (" +
		            "user_idn, dp, user_name, title, " +
		            "content, date, categori) VALUES (?, ?, ?, ?, ?, CURRENT_DATE, ?)";
		    try {
		        template.update(sql, user_Idn, dp, user_name, qnAtitle, content, categori); 
		        return true;
		    } catch (Exception e) {
		        System.out.println("InsertQnA error: " + e.getMessage());
		        return false;
		    }
		
	}

	public List<HelpDeskDto> QaAList() {
		// TODO Auto-generated method stub
		
		 String sql = "SELECT * from QnA where deleteYN=0;";

		 return template.query(sql, new BeanPropertyRowMapper<HelpDeskDto>(HelpDeskDto.class));

	}

	public int QaAListCount() {
		// TODO Auto-generated method stub
		String sql = "SELECT count(*) from QnA where deleteYN=0; ";
	    try {
	        return template.queryForObject(sql, Integer.class);
	    } catch (Exception e) {
	        System.out.println("QaAListCount");
	        return 0;
	    }
	}

	public List<HelpDeskDto> QaAListDetail(String index) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from QnA where deleteYN=0 and `index`=?;";

		 return template.query(sql, new BeanPropertyRowMapper<HelpDeskDto>(HelpDeskDto.class),index);
	}
}