package com.kbfg.lxp.HelpDesk.Dto;

import org.springframework.stereotype.Component;

@Component
public class HelpDeskDto {
	private int index;
	private String dp;
	private String user_name;
	private String title;
	private String content;
	private String date;
	private String categori;
	private int replyYN;
	private int deleteYN;
	

	public String getCategori() {
		return categori;
	}
	public int getReplyYN() {
		return replyYN;
	}
	public void setReplyYN(int replyYN) {
		this.replyYN = replyYN;
	}
	public int getDeleteYN() {
		return deleteYN;
	}
	public void setDeleteYN(int deleteYN) {
		this.deleteYN = deleteYN;
	}
	public void setCategori(String categori) {
		this.categori = categori;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getDp() {
		return dp;
	}
	public void setDp(String dp) {
		this.dp = dp;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	
	

}
