
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
	  "select facility_notice_num, facility_notice_title, facility_notice_content, facility_notice_hit " +
	  "from facility_notice order by facility_notice_num desc"; 
	  
	  return (ArrayList<FacilityNoticeBean>)template.query (query, new BeanPropertyRowMapper<FacilityNoticeBean>(FacilityNoticeBean.class));
	  }

	  public boolean write(FacilityNoticeBean notice) { 
		  String query ="insert into facility_notice (facility_notice_title, facility_notice_content, facility_notice_file, facility_notice_hit) values (?,?,?,0);"; 
		  int result = this.template.update(query, notice.getFacility_notice_title(),notice.getFacility_notice_content(),notice.getFacility_notice_file());
	      return result > 0;
	  }
		
	  public boolean modify(FacilityNoticeBean notice) {   
		  String query = "update facility_notice set facility_notice_title = ?, facility_notice_content = ? where facility_notice_num = ?";
		  int result = this.template.update(query,notice.getFacility_notice_title(),notice.getFacility_notice_content(), notice.getFacility_notice_num());
		  return result>0;
		  };
	
	  public boolean delete(int facility_notice_num) { // TODO Auto-generated method stub
		  String query = "delete from facility_notice where facility_notice_num = ?";
		  int result = this.template.update(query, facility_notice_num );
		  return result>0;
		  }
	
	  public FacilityNoticeBean contentView(int facility_notice_num) {
		  upHit(facility_notice_num);
		  String query = "select * from facility_notice where facility_notice_num = " + facility_notice_num; 
		  return template.queryForObject(query, new BeanPropertyRowMapper<FacilityNoticeBean>(FacilityNoticeBean.class));
		  }
	
	  private void upHit(int facility_notice_num) { // TODO Auto-generated method stub
		  String query = "update facility_notice set facility_notice_hit = facility_notice_hit + 1 where facility_notice_num = ?";
		  this.template.update(query, facility_notice_num);
 }
}