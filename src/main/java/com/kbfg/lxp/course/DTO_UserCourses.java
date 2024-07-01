package com.kbfg.lxp.course;

import java.time.LocalDate;

public class DTO_UserCourses {
    private int userCourseRef;
    private String userIdn;
    private int courseRef;
    private int sessionNumber;
    private String courseName;
    private String courseCategory;
    private String courseSubcategory;
    private String courseStatus;
    private String enrollmentStatus;
    private LocalDate courseStartDate;
    private LocalDate courseEndDate;
    private LocalDate completionDate;
    private String positionAtCompletion;
    private int mileage;
    private int score;
    private String approver;
    private String approvalStatus;
	public int getUserCourseRef() {
		return userCourseRef;
	}
	public void setUserCourseRef(int userCourseRef) {
		this.userCourseRef = userCourseRef;
	}
	public String getUserIdn() {
		return userIdn;
	}
	public void setUserIdn(String userIdn) {
		this.userIdn = userIdn;
	}
	public int getCourseRef() {
		return courseRef;
	}
	public void setCourseRef(int courseRef) {
		this.courseRef = courseRef;
	}
	public int getSessionNumber() {
		return sessionNumber;
	}
	public void setSessionNumber(int sessionNumber) {
		this.sessionNumber = sessionNumber;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseCategory() {
		return courseCategory;
	}
	public void setCourseCategory(String courseCategory) {
		this.courseCategory = courseCategory;
	}
	public String getCourseSubcategory() {
		return courseSubcategory;
	}
	public void setCourseSubcategory(String courseSubcategory) {
		this.courseSubcategory = courseSubcategory;
	}
	public String getCourseStatus() {
		return courseStatus;
	}
	public void setCourseStatus(String courseStatus) {
		this.courseStatus = courseStatus;
	}
	public String getEnrollmentStatus() {
		return enrollmentStatus;
	}
	public void setEnrollmentStatus(String enrollmentStatus) {
		this.enrollmentStatus = enrollmentStatus;
	}
	public LocalDate getCourseStartDate() {
		return courseStartDate;
	}
	public void setCourseStartDate(LocalDate courseStartDate) {
		this.courseStartDate = courseStartDate;
	}
	public LocalDate getCourseEndDate() {
		return courseEndDate;
	}
	public void setCourseEndDate(LocalDate courseEndDate) {
		this.courseEndDate = courseEndDate;
	}
	public LocalDate getCompletionDate() {
		return completionDate;
	}
	public void setCompletionDate(LocalDate completionDate) {
		this.completionDate = completionDate;
	}
	public String getPositionAtCompletion() {
		return positionAtCompletion;
	}
	public void setPositionAtCompletion(String positionAtCompletion) {
		this.positionAtCompletion = positionAtCompletion;
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
	public String getApprovalStatus() {
		return approvalStatus;
	}
	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
    
   
    
}