package com.kbfg.lxp.admin.dto;

import org.springframework.stereotype.Component;

@Component
public class AdminChartsRankBean {
	private String user_rank;
    private int count;
    
	public String getUser_rank() {
		return user_rank;
	}
	public void setUser_rank(String user_rank) {
		this.user_rank = user_rank;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
