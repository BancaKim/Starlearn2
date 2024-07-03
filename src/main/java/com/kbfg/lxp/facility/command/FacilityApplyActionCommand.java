package com.kbfg.lxp.facility.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kbfg.lxp.facility.dao.FacilityApplyDAO;
import com.kbfg.lxp.facility.dto.FacilityApplyBean;

@Service
public class FacilityApplyActionCommand {
	
/*	@Autowired FacilityApplyDAO facilitydao;
	@Autowired FacilityApplyBean facilitydata;
	
	@Override
	public void execute(Model model) {*/
	
    @Autowired
    private FacilityApplyDAO facilityApplyDAO;

    @Transactional
    public void applyForFacility(FacilityApplyBean facilityApplyBean) {
        // Perform any necessary business logic here
        facilityApplyDAO.saveFacilityApply(facilityApplyBean);
    }
}
		
	/*	Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		try{
			facilitydata.setUser_idn(null);
			facilitydata.setFacility_trainingCenter(null);
			facilitydata.setFacility_roomType(null);
			facilitydata.setFacility_StartDate(null);
			facilitydata.setFacility_EndDate(null);
			facilitydata.setFacility_Ph(null);
			facilitydata.setFacility_Car(null);
			facilitydata.setFacility_Person1Name(null);
			facilitydata.setFacility_Person1Rel(null);
			facilitydata.setFacility_Person1Name(null);
			facilitydata.setFacility_Person1Rel(null);
			facilitydata.setFacility_Person1Name(null);
			facilitydata.setFacility_Person1Rel(null);
			facilitydata.setFacility_Person1Name(null);
			facilitydata.setFacility_Person1Rel(null);
			facilitydata.setFacility_Person1Name(null);
			facilitydata.setFacility_Person1Rel(null);
			
			noticedata.setFacility_notice_num(num);
			noticedata.setFacility_notice_title(request.getParameter("facility_notice_title"));
			noticedata.setFacility_notice_content(request.getParameter("facility_notice_content"));
			 
			 if(noticedao.modify(noticedata)==false){
		   		System.out.println("수정실패");
	   			model.addAttribute("nextPage","faciility/content_view?num="+num);
		   	 } else {
		   	 System.out.println("수정 성공");
		   	 model.addAttribute("message","수정 성공");
		   	 model.addAttribute("nextPage","facility/content_view?num="+num);
		   	 	}
			 }catch(Exception ex){
	   			ex.printStackTrace();	 
		 }
	 }
}*/