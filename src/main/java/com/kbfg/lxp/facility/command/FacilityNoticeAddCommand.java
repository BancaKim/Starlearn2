
package com.kbfg.lxp.facility.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kbfg.lxp.Command;
import com.kbfg.lxp.facility.dao.FacilityNoticeDAO;
import com.kbfg.lxp.facility.dto.FacilityNoticeBean;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class FacilityNoticeAddCommand implements Command {

	@Autowired FacilityNoticeDAO noticedao;
	@Autowired FacilityNoticeBean noticedata;
	
	@Override
	public void execute(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
	   	
		String realFolder="";
   		String saveFolder="/facilitynoticeupload";
   		
int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		
   		boolean result=false;
   		
   		try{
   			MultipartRequest multi=null;
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"utf-8",
   					new DefaultFileRenamePolicy());
   			
   			noticedata.setFacility_notice_title(multi.getParameter("facility_notice_title"));
   			noticedata.setFacility_notice_content(multi.getParameter("BOARD_PASS"));
   			noticedata.setFacility_notice_file(
	   				multi.getFilesystemName((String)multi.getFileNames().nextElement()));
	   		
	   		result=noticedao.write(noticedata);

	   		if(result==false){
	   			System.out.println("게시글 업로드에 실패하였습니다.");
	   		}
	   		System.out.println("게시글 업로드에 성공하였습니다.");
	   		
	   		
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
	}  	
}