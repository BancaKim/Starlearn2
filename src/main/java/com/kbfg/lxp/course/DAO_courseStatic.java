package com.kbfg.lxp.course;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.kbfg.lxp.user.util.Constant;

public class DAO_courseStatic {

	private JdbcTemplate template;
	private static final Logger logger = LoggerFactory.getLogger(DAO_courseStatic.class);

	public DAO_courseStatic() {
		this.template = Constant.template;
	}

	   public List<DTO_ReportData> getReportData() {
	        String query = "SELECT " +
	                "d.user_dept_level3 AS level3, " +
	                "DATE_FORMAT(uc.completion_date, '%Y-%m') AS yymm, " +
	                "COUNT(uc.user_idn) AS sumApply, " +
	                "SUM(uc.score) AS sumScore, " +
	                "SUM(CASE WHEN uc.approval_status = 0 THEN 1 ELSE 0 END) AS sumPassNum, " +
	                "SUM(uc.score) / COUNT(uc.user_idn) AS aveScore, " +
	                "SUM(CASE WHEN uc.approval_status = 0 THEN 1 ELSE 0 END) / COUNT(uc.user_idn) AS passPercent " +
	                "FROM UserCourses uc " +
	                "LEFT OUTER JOIN user u ON uc.user_idn = u.user_idn " +
	                "LEFT OUTER JOIN dept d ON u.user_dept = d.user_dept " +
	                "GROUP BY d.user_dept_level3, DATE_FORMAT(uc.completion_date, '%Y-%m');";

	        return template.query(query, new ReportDataRowMapper());
	    }

	    private static class ReportDataRowMapper implements RowMapper<DTO_ReportData> {
	        @Override
	        public DTO_ReportData mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	DTO_ReportData data = new DTO_ReportData();
	            data.setLevel3(rs.getString("level3"));
	            data.setYymm(rs.getString("yymm"));
	            data.setSumApply(rs.getInt("sumApply"));
	            data.setSumScore(rs.getInt("sumScore"));
	            data.setSumPassNum(rs.getInt("sumPassNum"));
	            data.setAveScore(rs.getDouble("aveScore"));
	            data.setPassPercent(rs.getDouble("passPercent"));
	            return data;
	        }
	    }
	}
