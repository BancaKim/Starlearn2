package com.kbfg.lxp.admin.dto;

import org.springframework.stereotype.Component;

@Component
public class AdminChartsBean {
	private int enrollYear;
    private int count;
    
	public int getEnrollYear() {
		return enrollYear;
	}
	public void setEnrollYear(int enrollYear) {
		this.enrollYear = enrollYear;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
    
}
