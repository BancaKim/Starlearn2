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
	

	
    public class CourseRowMapper implements RowMapper<DTO_Course> {
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
            course.setCourse_proflie(rs.getString("course_proflie"));
            return course;
        }
	}



	public boolean insert(DTO_Course course) {
		 
		String sql = "INSERT INTO Courses (course_name, session_number, course_category, course_subcategory, course_start_date, course_end_date, course_entrol_start_date, course_entrol_end_date, course_cancel_start_date, course_cancel_end_date, progress_status, mileage, course_summary, course_details, evaluation_style, training_type, operating_firm, course_difficulty, material_availabe, evaluation_date, evaluation_date_second, manager_approval, course_capacity, course_count, course_proflie) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int result = 0;
		result=template.update(sql,
                course.getCourse_name(),
                course.getSession_number(),
                course.getCourse_category(),
                course.getCourse_subcategory(),
                course.getCourse_start_date() != null ? java.sql.Date.valueOf(course.getCourse_start_date()) : null,
                course.getCourse_end_date() != null ? java.sql.Date.valueOf(course.getCourse_end_date()) : null,
                course.getCourse_entrol_start_date() != null ? java.sql.Date.valueOf(course.getCourse_entrol_start_date()) : null,
                course.getCourse_entrol_end_date() != null ? java.sql.Date.valueOf(course.getCourse_entrol_end_date()) : null,
                course.getCourse_cancel_start_date() != null ? java.sql.Date.valueOf(course.getCourse_cancel_start_date()) : null,
                course.getCourse_cancel_end_date() != null ? java.sql.Date.valueOf(course.getCourse_cancel_end_date()) : null,
                course.getProgress_status(),
                course.getMileage(),
                course.getCourse_summary(),
                course.getCourse_details(),
                course.getEvaluation_style(),
                course.getTraining_type(),
                course.getOperating_firm(),
                course.getCourse_difficulty(),
                course.getMaterial_availabe(),
                course.getEvaluation_date(),
                course.getEvaluation_date_second(),
                course.getManager_approval(),
                course.getCourse_capacity(),
                course.getCourse_count(),
                course.getCourse_proflie());
                
                System.out.println("insertUser result:"+result);
		
		 return result > 0;
	}

	public List applyList(LocalDate today, String user_idn) {
		// TODO Auto-generated method stub
		if (template == null) {
			return new ArrayList<DTO_Course>();
		}

		String query = "SELECT * FROM Courses;";
		System.out.println(template);
		try {
			ArrayList<DTO_Course> result = (ArrayList<DTO_Course>) template.query(query, new CourseRowMapper());
			return result;
		} catch (Exception e) {
			return new ArrayList<DTO_Course>();
		}
			
	}
	
    public List<DTO_Course> getAllCourses() {
    	String SELECT_ALL_COURSES = "SELECT * FROM Courses";
        return template.query(SELECT_ALL_COURSES, new CourseRowMapper());
    }
    
    public DTO_Course getCourseById(String course_ref) {
    	String SELECT_COURSE_BY_ID = "SELECT * FROM Courses WHERE course_ref = ?";
        return template.queryForObject(SELECT_COURSE_BY_ID, new Object[]{course_ref}, new CourseRowMapper());
    }

    public int updateCourse(DTO_Course course) {
    	String UPDATE_COURSE = "UPDATE Courses SET course_name = ?, session_number = ?, course_category = ?, course_subcategory = ?, course_start_date = ?, course_end_date = ?, course_entrol_start_date = ?, course_entrol_end_date = ?, course_cancel_start_date = ?, course_cancel_end_date = ?, progress_status = ?, mileage = ?, course_summary = ?, course_details = ?, evaluation_style = ?, training_type = ?, operating_firm = ?, course_difficulty = ?, material_availabe = ?, evaluation_date = ?, evaluation_date_second = ?, manager_approval = ?, cours_expense = ?, course_capacity = ?, course_count = ?, course_proflie = ? WHERE course_ref = ?";
        return template.update(UPDATE_COURSE, course.getCourse_name(), course.getSession_number(), course.getCourse_category(), course.getCourse_subcategory(), course.getCourse_start_date(), course.getCourse_end_date(), course.getCourse_entrol_start_date(), course.getCourse_entrol_end_date(), course.getCourse_cancel_start_date(), course.getCourse_cancel_end_date(), course.getProgress_status(), course.getMileage(), course.getCourse_summary(), course.getCourse_details(), course.getEvaluation_style(), course.getTraining_type(), course.getOperating_firm(), course.getCourse_difficulty(), course.getMaterial_availabe(), course.getEvaluation_date(), course.getEvaluation_date_second(), course.getManager_approval(), course.getCours_expense(), course.getCourse_capacity(), course.getCourse_count(), course.getCourse_proflie(), course.getCourse_ref());
    }
    

}
