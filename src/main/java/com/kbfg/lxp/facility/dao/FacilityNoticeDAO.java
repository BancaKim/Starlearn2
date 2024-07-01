
package com.kbfg.lxp.facility.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kbfg.lxp.facility.dto.FacilityNoticeBean;

@Repository
public class FacilityNoticeDAO {
	
	JdbcTemplate template;
	
	@Autowired
	public FacilityNoticeDAO(JdbcTemplate jdbcTemplate) {
		this.template = jdbcTemplate;
	}
	
	public ArrayList<FacilityNoticeBean> list() {
		  
	  String query =
	  "select FACILITY_NOTICE_NUM, FACILITY_NOTICE_TITLE, FACILITY_NOTICE_CONTENT, FACILITY_NOTICE_HIT " +
	  "from facility_notice order by FACILITY_NOTICE_NUM desc"; 
	  
	  return (ArrayList<FacilityNoticeBean>)template.query (query, new BeanPropertyRowMapper<FacilityNoticeBean>(FacilityNoticeBean.class));
	  }

	  public boolean write(FacilityNoticeBean notice) { 
		  String query ="insert into facility_notice (FACILITY_NOTICE_TITLE, FACILITY_NOTICE_CONTENT, FACILITY_NOTICE_FILE, FACILITY_NOTICE_HIT) values (?, ?,?,0);"; 
		  int result = this.template.update(query, notice.getFacility_notice_title(),notice.getFacility_notice_content(),notice.getFacility_notice_file());
	      return result > 0;
	  }
		
	  public void modify(int facility_notice_num, String facility_notice_title, String facility_notice_content) {   
		  String query = "update facility_notice set FACILITY_NOTICE_TITLE = ?, FACILITY_NOTICE_CONTENT = ? where FACILITY_NOTICE_NUM = ?";
		  this.template.update(query,facility_notice_title,facility_notice_content, facility_notice_num);
		  };
	
	  public void delete(int facility_notice_num) { // TODO Auto-generated method stub
		  String query = "delete from facility_notice where facility_notice_num = ?";
		  this.template.update(query, facility_notice_num );
		  }
	
	  public FacilityNoticeBean contentView(int facility_notice_num) {
		  upHit(facility_notice_num);
		  String query = "select * from facility_notice where bId = " + facility_notice_num; 
		  return template.queryForObject(query, new BeanPropertyRowMapper<FacilityNoticeBean>(FacilityNoticeBean.class));
		  }
	
	  private void upHit(int facility_notice_num) { // TODO Auto-generated method stub
		  String query = "update facility_notice set bHit = bHit + 1 where bId = ?";
		  this.template.update(query, facility_notice_num);
 }
}