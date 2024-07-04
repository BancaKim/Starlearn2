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

public class DAO_UserCourses {

	private JdbcTemplate template;
	private static final Logger logger = LoggerFactory.getLogger(DAO_UserCourses.class);

	public DAO_UserCourses() {
		this.template = Constant.template;
	}

    // Create
    public void addUserCourse(DTO_UserCourses userCourse) {
       String query = "INSERT INTO UserCourses (user_idn, course_ref, session_number, course_name, course_category, course_subcategory, course_status, enrollment_status, course_start_date, course_end_date, completion_date, position_at_completion, mileage, score, approver, approval_status, course_proflie) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
       
//       // 완성된 쿼리 출력
//       String formattedQuery = String.format(
//           "INSERT INTO UserCourses (user_idn, course_ref, session_number, course_name, course_category, course_subcategory, course_status, enrollment_status, course_start_date, course_end_date, completion_date, position_at_completion, mileage, score, approver, approval_status) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')",
//           userCourse.getUser_idn(), userCourse.getCourse_ref(), userCourse.getSession_number(), userCourse.getCourse_name(), userCourse.getCourse_category(), userCourse.getCourse_subcategory(), userCourse.getCourse_status(), userCourse.getEnrollment_status(), userCourse.getCourse_start_date(), userCourse.getCourse_end_date(), userCourse.getCompletion_date(), userCourse.getPosition_at_completion(), userCourse.getMileage(), userCourse.getScore(), userCourse.getApprover(), userCourse.getApproval_status()
//       );
//       System.out.println("Executing query: " + formattedQuery);
//       
       
       template.update(query, userCourse.getUser_idn(), userCourse.getCourse_ref(), userCourse.getSession_number(), userCourse.getCourse_name(), userCourse.getCourse_category(), userCourse.getCourse_subcategory(), userCourse.getCourse_status(), userCourse.getEnrollment_status(), userCourse.getCourse_start_date(), userCourse.getCourse_end_date(), userCourse.getCompletion_date(), userCourse.getPosition_at_completion(), userCourse.getMileage(), userCourse.getScore(), userCourse.getApprover(), userCourse.getApproval_status(), userCourse.getCourse_proflie());
    }

    // Read
    public DTO_UserCourses getUserCourse(int user_course_ref) {
        String query = "SELECT * FROM UserCourses WHERE user_course_ref = ?";
        return template.queryForObject(query, new Object[]{user_course_ref}, new UserCoursesRowMapper());
    }

    // Update
    public void updateUserCourse(DTO_UserCourses userCourse) {
        String query = "UPDATE UserCourses SET user_idn = ?, course_ref = ?, session_number = ?, course_name = ?, course_category = ?, course_subcategory = ?, course_status = ?, enrollment_status = ?, course_start_date = ?, course_end_date = ?, completion_date = ?, position_at_completion = ?, mileage = ?, score = ?, approver = ?, approval_status = ? WHERE user_course_ref = ?";
        template.update(query, userCourse.getUser_idn(), userCourse.getCourse_ref(), userCourse.getSession_number(), userCourse.getCourse_name(), userCourse.getCourse_category(), userCourse.getCourse_subcategory(), userCourse.getCourse_status(), userCourse.getEnrollment_status(), userCourse.getCourse_start_date(), userCourse.getCourse_end_date(), userCourse.getCompletion_date(), userCourse.getPosition_at_completion(), userCourse.getMileage(), userCourse.getScore(), userCourse.getApprover(), userCourse.getApproval_status(), userCourse.getUser_course_ref());
    }

    // Delete
    public void deleteUserCourse(int user_course_ref) {
        String query = "DELETE FROM UserCourses WHERE user_course_ref = ?";
        template.update(query, user_course_ref);
    }
    
 // 등록 취소 -> progress_status 를 "취소"로 update
    public void cancelUserCourse(String user_idn, String course_ref) {
        System.out.println("user_idn"+user_idn);
        System.out.println("course_ref"+course_ref);
    	String query = "UPDATE UserCourses SET course_status = '취소' WHERE user_idn = ? AND course_ref = ?;";
        System.out.println("취소건: "+template.update(query, user_idn, course_ref));
    }

    // List all user courses
    public List<DTO_UserCourses> getAllUserCourses() {
        String query = "SELECT * FROM UserCourses";
        return template.query(query, new UserCoursesRowMapper());
    }

    // RowMapper implementation to map ResultSet to DTO_UserCourses
    private static class UserCoursesRowMapper implements RowMapper<DTO_UserCourses> {
        @Override
        public DTO_UserCourses mapRow(ResultSet rs, int rowNum) throws SQLException {
            DTO_UserCourses userCourse = new DTO_UserCourses();
            userCourse.setUser_course_ref(rs.getInt("user_course_ref"));
            userCourse.setUser_idn(rs.getString("user_idn"));
            userCourse.setCourse_ref(rs.getInt("course_ref"));
            userCourse.setSession_number(rs.getInt("session_number"));
            userCourse.setCourse_name(rs.getString("course_name"));
            userCourse.setCourse_category(rs.getString("course_category"));
            userCourse.setCourse_subcategory(rs.getString("course_subcategory"));
            userCourse.setCourse_status(rs.getString("course_status"));
            userCourse.setEnrollment_status(rs.getString("enrollment_status"));
            userCourse.setCourse_start_date(rs.getDate("course_start_date").toLocalDate());
            userCourse.setCourse_end_date(rs.getDate("course_end_date").toLocalDate());
            userCourse.setCompletion_date(rs.getDate("completion_date").toLocalDate());
            userCourse.setPosition_at_completion(rs.getString("position_at_completion"));
            userCourse.setMileage(rs.getInt("mileage"));
            userCourse.setScore(rs.getInt("score"));
            userCourse.setApprover(rs.getString("approver"));
            userCourse.setApproval_status(rs.getString("approval_status"));
            return userCourse;
        }
    }    

}
