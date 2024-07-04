package com.kbfg.lxp.admin.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.tuition_refund.dao.Tuition_refundDao;
import com.kbfg.lxp.tuition_refund.dto.Tuition_refundDto;

@Component
public class AdminTuition_refundListCommand  implements Command  {


@Autowired Tuition_refundDao tuitionDao;
@Autowired Tuition_refundDto tuitionDto;

@Override
public void execute(Model model) {
	// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int count =  tuitionDao.getTuitionCount();
		List<Tuition_refundDto> ApplyTuitionList = tuitionDao.adminTuition_refundList(); 
	    
	    
	    model.addAttribute("count", count);
	    model.addAttribute("ApplyTuitionList", ApplyTuitionList);
	}
}
