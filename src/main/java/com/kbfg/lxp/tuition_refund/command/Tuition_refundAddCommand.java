package com.kbfg.lxp.tuition_refund.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.tuition_refund.dto.Tuition_refundDto;

@Component
public class Tuition_refundAddCommand implements Command{
	
	@Autowired Tuition_refundDao tuitionDao;
	@Autowired Tuition_refundDto tuitionDto;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		System.out.println("add들어옴");
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

	    String userIdn = (String) session.getAttribute("userIdn");
	    String user_id = (String) session.getAttribute("user_id");
	    String learning_division = request.getParameter("categorySelect");
	    String learning_field = request.getParameter("subCategorySelect");

	    int ApplyAmount = tuitionDao.getApplyAmount(user_id); //지원 금액
	    System.out.println(request.getParameter("academy_price"));
	    String price1 = request.getParameter("academy_price");
	    price1 = price1.replace(",", "");
	    
	    int academy_price = Integer.parseInt(price1);
	    int refund_price;
	    if(960000-ApplyAmount>0) {
	    	if(960000-ApplyAmount>=(Integer.parseInt(price1)*0.8)) {
	    		 refund_price = (int) ((int)(Integer.parseInt(price1))*0.8);
	    	}else {
	    		refund_price = 960000-ApplyAmount;
	    	}
	    }else {
	    	refund_price = 0;
	    }

	    
	
	    tuitionDto.setUser_idn(userIdn);
		tuitionDto.setLearning_division(learning_division);
		tuitionDto.setLearning_field(learning_field);
	    tuitionDto.setLearning_how(request.getParameter("learning_how"));
	    tuitionDto.setAcademy_name(request.getParameter("academy_name"));
	    tuitionDto.setAcademy_page(request.getParameter("academy_page"));
	    tuitionDto.setAcademy_course(request.getParameter("academy_course"));
	    tuitionDto.setAcademy_date(request.getParameter("academy_date"));
	    tuitionDto.setPayment_how(request.getParameter("payment_how"));
	    tuitionDto.setCredit_number(request.getParameter("credit_number"));
	    tuitionDto.setConfirm_number(request.getParameter("confirm_number"));
	    tuitionDto.setConfirm_date(request.getParameter("confirm_date"));
	    tuitionDto.setFranchisee_name(request.getParameter("franchisee_name"));
	    tuitionDto.setAcademy_price(academy_price);
	    tuitionDto.setRefund_price(refund_price);
	    
        boolean result=tuitionDao.insertTuitionRefund(tuitionDto);
        if(result) {
        	System.out.println("학원비 지원 신청 완료");
        }else {
        	System.out.println("학원비 지원 신청 실패");
        }
	   		
       
    }
 
	    
	

}


