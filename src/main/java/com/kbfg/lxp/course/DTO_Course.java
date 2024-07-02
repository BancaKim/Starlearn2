package com.kbfg.lxp.course;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

@Component
public class DTO_Course {

    private int course_ref;
    private String course_name;
    private int session_number;
    private String course_category;
    private String course_subcategory;
    private LocalDate course_start_date;
    private LocalDate course_end_date;
    private LocalDate course_entrol_start_date;
    private LocalDate course_entrol_end_date;
    private LocalDate course_cancel_start_date;
    private LocalDate course_cancel_end_date;
    private String progress_status;
    private int mileage;
    private String course_summary;
    private String course_details;
    private String evaluation_style;
    private String training_type;
    private String operating_firm;
    private String course_difficulty;
    private String material_availabe;
    private String evaluation_date;
    private String evaluation_date_second;
    private String manager_approval;
    private int cours_expense;
    private int course_capacity;
    private int course_count;
    
	public int getCourse_ref() {
		return course_ref;
	}
	public void setCourse_ref(int course_ref) {
		this.course_ref = course_ref;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getSession_number() {
		return session_number;
	}
	public void setSession_number(int session_number) {
		this.session_number = session_number;
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
	public LocalDate getCourse_entrol_start_date() {
		return course_entrol_start_date;
	}
	public void setCourse_entrol_start_date(LocalDate course_entrol_start_date) {
		this.course_entrol_start_date = course_entrol_start_date;
	}
	public LocalDate getCourse_entrol_end_date() {
		return course_entrol_end_date;
	}
	public void setCourse_entrol_end_date(LocalDate course_entrol_end_date) {
		this.course_entrol_end_date = course_entrol_end_date;
	}
	public LocalDate getCourse_cancel_start_date() {
		return course_cancel_start_date;
	}
	public void setCourse_cancel_start_date(LocalDate course_cancel_start_date) {
		this.course_cancel_start_date = course_cancel_start_date;
	}
	public LocalDate getCourse_cancel_end_date() {
		return course_cancel_end_date;
	}
	public void setCourse_cancel_end_date(LocalDate course_cancel_end_date) {
		this.course_cancel_end_date = course_cancel_end_date;
	}
	public String getProgress_status() {
		return progress_status;
	}
	public void setProgress_status(String progress_status) {
		this.progress_status = progress_status;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getCourse_summary() {
		return course_summary;
	}
	public void setCourse_summary(String course_summary) {
		this.course_summary = course_summary;
	}
	public String getCourse_details() {
		return course_details;
	}
	public void setCourse_details(String course_details) {
		this.course_details = course_details;
	}
	public String getEvaluation_style() {
		return evaluation_style;
	}
	public void setEvaluation_style(String evaluation_style) {
		this.evaluation_style = evaluation_style;
	}
	public String getTraining_type() {
		return training_type;
	}
	public void setTraining_type(String training_type) {
		this.training_type = training_type;
	}
	public String getOperating_firm() {
		return operating_firm;
	}
	public void setOperating_firm(String operating_firm) {
		this.operating_firm = operating_firm;
	}
	public String getCourse_difficulty() {
		return course_difficulty;
	}
	public void setCourse_difficulty(String course_difficulty) {
		this.course_difficulty = course_difficulty;
	}
	public String getMaterial_availabe() {
		return material_availabe;
	}
	public void setMaterial_availabe(String material_availabe) {
		this.material_availabe = material_availabe;
	}
	public String getEvaluation_date() {
		return evaluation_date;
	}
	public void setEvaluation_date(String evaluation_date) {
		this.evaluation_date = evaluation_date;
	}
	public String getEvaluation_date_second() {
		return evaluation_date_second;
	}
	public void setEvaluation_date_second(String evaluation_date_second) {
		this.evaluation_date_second = evaluation_date_second;
	}
	public String getManager_approval() {
		return manager_approval;
	}
	public void setManager_approval(String manager_approval) {
		this.manager_approval = manager_approval;
	}
	public int getCours_expense() {
		return cours_expense;
	}
	public void setCours_expense(int cours_expense) {
		this.cours_expense = cours_expense;
	}
	public int getCourse_capacity() {
		return course_capacity;
	}
	public void setCourse_capacity(int course_capacity) {
		this.course_capacity = course_capacity;
	}
	public int getCourse_count() {
		return course_count;
	}
	public void setCourse_count(int course_count) {
		this.course_count = course_count;
	}
    
	
	
    
}
