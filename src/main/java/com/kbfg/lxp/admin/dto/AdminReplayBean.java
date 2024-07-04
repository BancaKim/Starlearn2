package com.kbfg.lxp.admin.dto;

import org.springframework.stereotype.Component;

@Component
public class AdminReplayBean {
	private int question_index;
	private String content;
	private String date;
	private boolean deleteYN;
	public int getQuestion_index() {
		return question_index;
	}
	public void setQuestion_index(int question_index) {
		this.question_index = question_index;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public boolean isDeleteYN() {
		return deleteYN;
	}
	public void setDeleteYN(boolean deleteYN) {
		this.deleteYN = deleteYN;
	}
	

}
