package com.kbfg.lxp.admin.command;

import java.util.List;
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
public class AdminRefundApplyCommand  implements Command  {


@Autowired Tuition_refundDao tuitionDao;
@Autowired Tuition_refundDto tuitionDto;
@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String index = (String) request.getParameter("index");
		String YN = (String) request.getParameter("YN");
		
		System.out.println(index+" "+YN);
		
		tuitionDao.AdminRefundApply(index,YN);
		

		
	}


}
