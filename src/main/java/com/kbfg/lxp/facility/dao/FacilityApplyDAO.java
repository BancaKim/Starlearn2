
package com.kbfg.lxp.facility.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kbfg.lxp.facility.dto.FacilityApplyBean;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;

@Repository
public class FacilityApplyDAO {
	
	JdbcTemplate template;
	
	@Autowired
	public FacilityApplyDAO(JdbcTemplate jdbcTemplate) {
		this.template = jdbcTemplate;
	}
	
	 public ArrayList<FacilityApplyBean> getAllFacilityApplies(String user_idn) {
	        String sql = "SELECT * FROM facility_apply where user_idn=?";
	        return (ArrayList<FacilityApplyBean>) template.query(sql, new BeanPropertyRowMapper<>(FacilityApplyBean.class),user_idn);
	 }	

	public boolean saveFacilityApply(FacilityApplyBean applyBean) {
        String sql = "INSERT INTO facility_apply (user_idn, facility_trainingCenter, facility_roomType, facility_startDate, facility_endDate, facility_ph, facility_car, facility_person1_name, facility_person1_rel, facility_person2_name, facility_person2_rel, facility_person3_name, facility_person3_rel, facility_person4_name, facility_person4_rel, facility_person5_name, facility_person5_rel, facility_appl_pn, facility_significiant) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        int result = template.update(sql,applyBean.getUser_idn(), applyBean.getFacility_trainingCenter(), applyBean.getFacility_roomType(), applyBean.getFacility_startDate(), applyBean.getFacility_endDate(), applyBean.getFacility_ph(), applyBean.getFacility_car(), applyBean.getFacility_person1_name(), applyBean.getFacility_person1_rel(), applyBean.getFacility_person2_name(), applyBean.getFacility_person2_rel(), applyBean.getFacility_person3_name(), applyBean.getFacility_person3_rel(), applyBean.getFacility_person4_name(), applyBean.getFacility_person4_rel(), applyBean.getFacility_person5_name(), applyBean.getFacility_person5_rel(), applyBean.getFacility_appl_pn(), applyBean.getFacility_significiant());
        return result > 0;
	}

    public boolean updateFacilityApply(FacilityApplyBean applyBean) {
        String sql = "UPDATE facility_apply SET user_idn = ?, facility_trainingCenter = ?, facility_roomType = ?, facility_startDate = ?, facility_endDate = ?, facility_ph = ?, facility_car = ?, facility_person1name = ?, facility_person1rel = ?, facility_person2name = ?, facility_person2rel = ?, facility_person3name = ?, facility_person3rel = ?, facility_person4name = ?, facility_person4rel = ?, facility_person5name = ?, facility_person5rel = ?, facility_appl_pn = ?, facility_significiant = ? WHERE facility_apply_num = ?";
        int result = template.update(sql, applyBean.getUser_idn(), applyBean.getFacility_trainingCenter(), applyBean.getFacility_roomType(), applyBean.getFacility_startDate(), applyBean.getFacility_endDate(), applyBean.getFacility_ph(), applyBean.getFacility_car(), applyBean.getFacility_person1_name(), applyBean.getFacility_person1_rel(), applyBean.getFacility_person2_name(), applyBean.getFacility_person2_rel(), applyBean.getFacility_person3_name(), applyBean.getFacility_person3_rel(), applyBean.getFacility_person4_name(), applyBean.getFacility_person4_rel(), applyBean.getFacility_person5_name(), applyBean.getFacility_person5_rel(), applyBean.getFacility_appl_pn(), applyBean.getFacility_significiant(), applyBean.getFacility_apply_num());
        return result>0;
    }

    public boolean deleteFacilityApply(String applyNum) {
        String sql = "DELETE FROM facility_apply WHERE facility_apply_num = ?";
        int result = template.update(sql, applyNum);
        return result>0;
    }

    public FacilityApplyBean getFacilityApply(String applyNum) {
        String sql = "SELECT * FROM facility_apply WHERE facility_apply_num = ?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<>(FacilityApplyBean.class), applyNum);
    }
    
    public int getListCount(String user_idn) {
    	String sql = "SELECT COUNT(*) FROM facility_apply WHERE user_idn=?";
    	return template.queryForInt(sql,user_idn);
    }
}