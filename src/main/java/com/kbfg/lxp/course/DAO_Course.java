package com.kbfg.lxp.course;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.kbfg.lxp.user.util.Constant;

public class DAO_Course {

	private JdbcTemplate template;
	private static final Logger logger = LoggerFactory.getLogger(DAO_Course.class);

	public DAO_Course() {
		this.template = Constant.template;
	}

	// return every courses
	public ArrayList<DTO_Course> list() {
		if (template == null) {
			return new ArrayList<DTO_Course>();
		}

		String query = "SELECT * FROM Courses;";

		try {
			ArrayList<DTO_Course> result = (ArrayList<DTO_Course>) template.query(query, new CourseRowMapper());
			return result;
		} catch (Exception e) {
			return new ArrayList<DTO_Course>();
		}
	}

    public List<DTO_UserCourses> getItem(LocalDate today, String user_idn) {
        String query = "SELECT * FROM UserCourses WHERE user_idn = ? AND course_start_date <= ? AND course_end_date >= ?;";
        

            List<DTO_UserCourses> result = template.query(query, new UserCoursesRowMapper(), user_idn, Date.valueOf(today), Date.valueOf(today));
//            logger.info("Query executed successfully. Result size: {}", result.size());
            return result;
  
    }
    
    private static class UserCoursesRowMapper implements RowMapper<DTO_UserCourses> {
        @Override
        public DTO_UserCourses mapRow(ResultSet rs, int rowNum) throws SQLException {
            DTO_UserCourses course = new DTO_UserCourses();
            course.setUser_course_ref(rs.getInt("user_course_ref"));
            course.setUser_idn(rs.getString("user_idn"));
            course.setCourse_ref(rs.getInt("course_ref"));
            course.setSession_number(rs.getInt("session_number"));
            course.setCourse_name(rs.getString("course_name"));
            course.setCourse_category(rs.getString("course_category"));
            course.setCourse_subcategory(rs.getString("course_subcategory"));
            course.setCourse_status(rs.getString("course_status"));
            course.setEnrollment_status(rs.getString("enrollment_status"));
            course.setCourse_start_date(rs.getDate("course_start_date").toLocalDate());
            course.setCourse_end_date(rs.getDate("course_end_date").toLocalDate());
            course.setCompletion_date(rs.getDate("completion_date").toLocalDate());
            course.setPosition_at_completion(rs.getString("position_at_completion"));
            course.setMileage(rs.getInt("mileage"));
            course.setScore(rs.getInt("score"));
            course.setApprover(rs.getString("approver"));
            course.setApproval_status(rs.getString("approval_status"));
            
            System.out.println(rs.getString("course_name"));
            return course;
        }
    }
	

	
	private static class CourseRowMapper implements RowMapper<DTO_Course> {
		@Override
		public DTO_Course mapRow(ResultSet rs, int rowNum) throws SQLException {
			DTO_Course course = new DTO_Course();
			course.setCourse_ref(rs.getInt("course_ref"));
			course.setCourse_name(rs.getString("course_name"));
			course.setSession_number(rs.getInt("session_number"));
			course.setCourse_category(rs.getString("course_category"));
			course.setCourse_subcategory(rs.getString("course_subcategory"));
			course.setCourse_start_date(rs.getDate("course_start_date").toLocalDate());
			course.setCourse_end_date(rs.getDate("course_end_date").toLocalDate());
			course.setCourse_entrol_start_date(rs.getDate("course_entrol_start_date").toLocalDate());
			course.setCourse_entrol_end_date(rs.getDate("course_entrol_end_date").toLocalDate());
			course.setCourse_cancel_start_date(rs.getDate("course_cancel_start_date").toLocalDate());
			course.setCourse_cancel_end_date(rs.getDate("course_cancel_end_date").toLocalDate());
			course.setProgress_status(rs.getString("progress_status"));
			course.setMileage(rs.getInt("mileage"));
			course.setCourse_summary(rs.getString("course_summary"));
			course.setCourse_details(rs.getString("course_details"));
			course.setEvaluation_style(rs.getString("evaluation_style"));
			course.setTraining_type(rs.getString("training_type"));
			course.setOperating_firm(rs.getString("operating_firm"));
			course.setCourse_difficulty(rs.getString("course_difficulty"));
			course.setMaterial_availabe(rs.getString("material_availabe"));
			course.setEvaluation_date(rs.getString("evaluation_date"));
			course.setEvaluation_date_second(rs.getString("evaluation_date_second"));
			course.setManager_approval(rs.getString("manager_approval"));
			course.setCours_expense(rs.getInt("cours_expense"));
			course.setCourse_capacity(rs.getInt("course_capacity"));
			course.setCourse_count(rs.getInt("course_count"));
			return course;
		}
	}

}
