package com.kbfg.lxp.course;


import org.springframework.stereotype.Component;

@Component
public class DTO_ReportData {

	
	    private String level3;
	    private String yymm;
	    private int sumApply;
	    private int sumScore;
	    private int sumPassNum;
	    private double aveScore;
	    private double passPercent;

	    // Getters and Setters

	    public String getLevel3() {
	        return level3;
	    }

	    public void setLevel3(String level3) {
	        this.level3 = level3;
	    }

	    public String getYymm() {
	        return yymm;
	    }

	    public void setYymm(String yymm) {
	        this.yymm = yymm;
	    }

	    public int getSumApply() {
	        return sumApply;
	    }

	    public void setSumApply(int sumApply) {
	        this.sumApply = sumApply;
	    }

	    public int getSumScore() {
	        return sumScore;
	    }

	    public void setSumScore(int sumScore) {
	        this.sumScore = sumScore;
	    }

	    public int getSumPassNum() {
	        return sumPassNum;
	    }

	    public void setSumPassNum(int sumPassNum) {
	        this.sumPassNum = sumPassNum;
	    }

	    public double getAveScore() {
	        return aveScore;
	    }

	    public void setAveScore(double aveScore) {
	        this.aveScore = aveScore;
	    }

	    public double getPassPercent() {
	        return passPercent;
	    }

	    public void setPassPercent(double passPercent) {
	        this.passPercent = passPercent;
	    }
	}
    

