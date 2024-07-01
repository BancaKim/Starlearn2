package com.kbfg.lxp.course;

import org.springframework.ui.Model;

public interface CourseCommand {

	void execute(Model model) throws Exception;
	
	

}