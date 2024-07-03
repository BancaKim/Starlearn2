package com.kbfg.lxp.course;

import java.time.LocalDate;

public class DTO_UserCourses {
    private int user_course_ref;
    private String user_idn;
    private int course_ref;
    private int session_number;
    private String course_name;
    private String course_category;
    private String course_subcategory;
    private String course_status;
    private String enrollment_status;
    private LocalDate course_start_date;
    private LocalDate course_end_date;
    private LocalDate completion_date;
    private String position_at_completion;
    private int mileage;
    private int score;
    private String approver;
    private String approval_status;
    private String course_proflie;
    
    
    
	public String getCourse_proflie() {
		return course_proflie;
	}
	public void setCourse_proflie(String course_proflie) {
		this.course_proflie = course_proflie;
	}
	public int getUser_course_ref() {
		return user_course_ref;
	}
	public void setUser_course_ref(int user_course_ref) {
		this.user_course_ref = user_course_ref;
	}
	public String getUser_idn() {
		return user_idn;
	}
	public void setUser_idn(String user_idn) {
		this.user_idn = user_idn;
	}
	public int getCourse_ref() {
		return course_ref;
	}
	public void setCourse_ref(int course_ref) {
		this.course_ref = course_ref;
	}
	public int getSession_number() {
		return session_number;
	}
	public void setSession_number(int session_number) {
		this.session_number = session_number;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_category() {
		return course_category;
	}
	public void setCourse_category(String course_category) {
		this.course_category = course_category;
	}
	public String getCourse_subcategory() {
		return course_subcategory;
	}
	public void setCourse_subcategory(String course_subcategory) {
		this.course_subcategory = course_subcategory;
	}
	public String getCourse_status() {
		return course_status;
	}
	public void setCourse_status(String course_status) {
		this.course_status = course_status;
	}
	public String getEnrollment_status() {
		return enrollment_status;
	}
	public void setEnrollment_status(String enrollment_status) {
		this.enrollment_status = enrollment_status;
	}
	public LocalDate getCourse_start_date() {
		return course_start_date;
	}
	public void setCourse_start_date(LocalDate course_start_date) {
		this.course_start_date = course_start_date;
	}
	public LocalDate getCourse_end_date() {
		return course_end_date;
	}
	public void setCourse_end_date(LocalDate course_end_date) {
		this.course_end_date = course_end_date;
	}
	public LocalDate getCompletion_date() {
		return completion_date;
	}
	public void setCompletion_date(LocalDate completion_date) {
		this.completion_date = completion_date;
	}
	public String getPosition_at_completion() {
		return position_at_completion;
	}
	public void setPosition_at_completion(String position_at_completion) {
		this.position_at_completion = position_at_completion;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public String getApproval_status() {
		return approval_status;
	}
	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}
    
   
    
}