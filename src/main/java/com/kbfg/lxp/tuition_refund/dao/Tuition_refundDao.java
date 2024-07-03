package com.kbfg.lxp.tuition_refund.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kbfg.lxp.tuition_refund.dto.Tuition_refundDto;
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
	        System.out.println("getUserInfo");
	    }
	    return null;
	}


	public int getrequestAmount(String user_id) {
		// TODO Auto-generated method stub
		String sql = "SELECT SUM(refund_price)FROM tuition_refund WHERE user_idn = ? AND approval IN (0, 1); ";
	    try {
	        return template.queryForObject(sql, Integer.class, user_id);
	    } catch (Exception e) {
	        System.out.println("getrequestAmount");
	        return 0;
	        
	    }
		
	}


	public int getApplyAmount(String user_id) {
		// TODO Auto-generated method stub
		String sql = "SELECT SUM(refund_price)FROM tuition_refund WHERE user_idn = ? AND approval IN (1); ";
	    try {
	        return template.queryForObject(sql, Integer.class, user_id);
	    } catch (Exception e) {
	        System.out.println("getApplyAmount");
	        return 0;
	    }
	}


	public boolean insertTuitionRefund(Tuition_refundDto tuitionDto) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO tuition_refund (" +
			    "user_idn, learning_division, learning_field, learning_how, " +
			    "academy_name, academy_page, academy_course, academy_date, " +
			    "academy_price, refund_price, payment_how, " +
			    "credit_number, confirm_number, confirm_date, franchisee_name, " +
			     "request_date" +
			    ") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_DATE)";
		try {
				template.update(sql, 
			    tuitionDto.getUser_idn(),
			    tuitionDto.getLearning_division(), 
			    tuitionDto.getLearning_field(), tuitionDto.getLearning_how(), 
			    tuitionDto.getAcademy_name(), tuitionDto.getAcademy_page(), 
			    tuitionDto.getAcademy_course(), tuitionDto.getAcademy_date(), 
			    tuitionDto.getAcademy_price(), 
			    tuitionDto.getRefund_price(), tuitionDto.getPayment_how(), 
			    tuitionDto.getCredit_number(), tuitionDto.getConfirm_number(), 
			    tuitionDto.getConfirm_date(), tuitionDto.getFranchisee_name()); 
				return true;
		}catch (Exception e) {
	        System.out.println("insertTuitionRefund");
	    }	
		return false;
	}


	public List<Tuition_refundDto> RefundApplyList(String userIdn) {
		// TODO Auto-generated method stub
		 String sql = "SELECT tuition_index, learning_division, learning_field, academy_course, academy_date, refund_price,approval " +
                 "FROM tuition_refund WHERE user_idn = ? AND approval = 0";

		 return template.query(sql, new BeanPropertyRowMapper<Tuition_refundDto>(Tuition_refundDto.class),userIdn);

	}


	public int RefundApplyCount(String userIdn) {
		// TODO Auto-generated method stub
		String sql = "SELECT count(*) FROM tuition_refund WHERE user_idn = ? AND approval IN (0); ";
	    try {
	        return template.queryForObject(sql, Integer.class, userIdn);
	    } catch (Exception e) {
	        System.out.println("RefundApplyCount");
	        return 0;
	    }
	}


	public int AgoRefundListCount(String userIdn) {
		// TODO Auto-generated method stub
		String sql = "SELECT count(*) FROM tuition_refund WHERE user_idn = ? AND approval IN (1,2); ";
	    try {
	        return template.queryForObject(sql, Integer.class, userIdn);
	    } catch (Exception e) {
	        System.out.println("AgoRefundListCount");
	        return 0;
	    }
	}


	public List<Tuition_refundDto> AgoRefundListList(String userIdn) {
		// TODO Auto-generated method stub
		 String sql = "SELECT tuition_index, learning_division, learning_field, academy_course, academy_date, refund_price,approval " +
                 "FROM tuition_refund WHERE user_idn = ? AND approval IN(1,2)";

		 return template.query(sql, new BeanPropertyRowMapper<Tuition_refundDto>(Tuition_refundDto.class),userIdn);
	}




	



}
