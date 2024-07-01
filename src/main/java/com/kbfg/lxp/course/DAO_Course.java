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

		String query = "SELECT * FROM courses;";

		try {
			ArrayList<DTO_Course> result = (ArrayList<DTO_Course>) template.query(query, new CourseRowMapper());
			return result;
		} catch (Exception e) {
			return new ArrayList<DTO_Course>();
		}
	}

    public List<DTO_UserCourses> getItem(LocalDate today, String user_idn) {
        String query = "SELECT * FROM user_courses WHERE user_idn = ? AND course_start_date <= ? AND course_end_date >= ?;";
        logger.info("Executing query: {}", query);
        logger.info("Parameters: user_idn = {}, today = {}", user_idn, today);

        try {
            List<DTO_UserCourses> result = template.query(query, new UserCoursesRowMapper(), user_idn, Date.valueOf(today), Date.valueOf(today));
            logger.info("Query executed successfully. Result size: {}", result.size());
            return result;
        } catch (Exception e) {
            logger.error("Error executing query: {}", e.getMessage(), e);
            return new ArrayList<DTO_UserCourses>();
        }
    }
    
    private static class UserCoursesRowMapper implements RowMapper<DTO_UserCourses> {
        @Override
        public DTO_UserCourses mapRow(ResultSet rs, int rowNum) throws SQLException {
            DTO_UserCourses course = new DTO_UserCourses();
            course.setUserCourseRef(rs.getInt("user_course_ref"));
            course.setUserIdn(rs.getString("user_idn"));
            course.setCourseRef(rs.getInt("course_ref"));
            course.setSessionNumber(rs.getInt("session_number"));
            course.setCourseName(rs.getString("course_name"));
            course.setCourseCategory(rs.getString("course_category"));
            course.setCourseSubcategory(rs.getString("course_subcategory"));
            course.setCourseStatus(rs.getString("course_status"));
            course.setEnrollmentStatus(rs.getString("enrollment_status"));
            course.setCourseStartDate(rs.getDate("course_start_date").toLocalDate());
            course.setCourseEndDate(rs.getDate("course_end_date").toLocalDate());
            course.setCompletionDate(rs.getDate("completion_date").toLocalDate());
            course.setPositionAtCompletion(rs.getString("position_at_completion"));
            course.setMileage(rs.getInt("mileage"));
            course.setScore(rs.getInt("score"));
            course.setApprover(rs.getString("approver"));
            course.setApprovalStatus(rs.getString("approval_status"));
            
            System.out.println(rs.getString("course_name"));
            return course;
        }
    }
	

	
	private static class CourseRowMapper implements RowMapper<DTO_Course> {
		@Override
		public DTO_Course mapRow(ResultSet rs, int rowNum) throws SQLException {
			DTO_Course course = new DTO_Course();
			course.setCourseRef(rs.getInt("course_ref"));
			course.setCourseName(rs.getString("course_name"));
			course.setSessionNumber(rs.getInt("session_number"));
			course.setCourseCategory(rs.getString("course_category"));
			course.setCourseSubcategory(rs.getString("course_subcategory"));
			course.setCourseStartDate(rs.getDate("course_start_date").toLocalDate());
			course.setCourseEndDate(rs.getDate("course_end_date").toLocalDate());
			course.setCourseEntrolStartDate(rs.getDate("course_entrol_start_date").toLocalDate());
			course.setCourseEntrolEndDate(rs.getDate("course_entrol_end_date").toLocalDate());
			course.setCourseCancelStartDate(rs.getDate("course_cancel_start_date").toLocalDate());
			course.setCourseCancelEndDate(rs.getDate("course_cancel_end_date").toLocalDate());
			course.setProgressStatus(rs.getString("progress_status"));
			course.setMileage(rs.getInt("mileage"));
			course.setCourseSummary(rs.getString("course_summary"));
			course.setCourseDetails(rs.getString("course_details"));
			course.setEvaluationStyle(rs.getString("evaluation_style"));
			course.setTrainingType(rs.getString("training_type"));
			course.setOperatingFirm(rs.getString("operating_firm"));
			course.setCourseDifficulty(rs.getString("course_difficulty"));
			course.setMaterialAvailabe(rs.getString("material_availabe"));
			course.setEvaluationDate(rs.getString("evaluation_date"));
			course.setEvaluationDateSecond(rs.getString("evaluation_date_second"));
			course.setManagerApproval(rs.getString("manager_approval"));
			course.setCoursExpense(rs.getInt("cours_expense"));
			course.setCourseCapacity(rs.getInt("course_capacity"));
			course.setCourseCount(rs.getInt("course_count"));
			return course;
		}
	}

}
