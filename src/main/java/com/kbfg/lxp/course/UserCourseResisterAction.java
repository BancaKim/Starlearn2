package com.kbfg.lxp.course;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Component
public class UserCourseResisterAction implements CourseCommand {
	@Override
	public void execute(Model model) throws Exception {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		DAO_Course dao = new DAO_Course();
		DTO_Course course = new DTO_Course();
		
		String user_idn = (String) session.getAttribute("userIdn");
		String course_ref = request.getParameter("course_ref");
//		System.out.println("course_ref" + course_ref);

		course = dao.getCourseById(course_ref);
		System.out.println("course.getCourse_start_date()"+course.getCourse_start_date());
		request.setAttribute("courseDetail", course);

		DAO_UserCourses dao_UserCourses =new DAO_UserCourses();
		DTO_UserCourses userCourse = new DTO_UserCourses();
		
		
		userCourse.setUser_idn(user_idn);
		userCourse.setCourse_ref(Integer.parseInt(course_ref));
		userCourse.setSession_number(course.getSession_number());
		userCourse.setCourse_name(course.getCourse_name());
		userCourse.setCourse_category(course.getCourse_category());
		userCourse.setCourse_subcategory(course.getCourse_subcategory());
		userCourse.setCourse_status(course.getProgress_status()); // Assuming progress_status maps to course_status
		userCourse.setEnrollment_status("Enrolled"); // You can set the initial enrollment status as needed
		userCourse.setCourse_start_date(course.getCourse_start_date().plus(1, ChronoUnit.DAYS));
		userCourse.setCourse_end_date(course.getCourse_end_date().plus(1, ChronoUnit.DAYS));
		userCourse.setCompletion_date(course.getCourse_end_date().plus(1, ChronoUnit.DAYS)); // Assuming the course has not yet been completed
		userCourse.setPosition_at_completion("none"); // Assuming no position data at the start
		userCourse.setMileage(course.getMileage());
		userCourse.setScore(0); // Assuming initial score is 0
		userCourse.setApprover("none"); // Assuming no approver at the start
		userCourse.setApproval_status("Pending"); // Assuming initial approval status is pending
		userCourse.setCourse_proflie(course.getCourse_proflie());
		
		System.out.println("userCourse.getCourse_start_date()"+userCourse.getCourse_start_date());

		dao_UserCourses.addUserCourse(userCourse);
	}

	private int parseIntOrDefault(String value, int defaultValue) {
		try {
			return (value != null && !value.isEmpty()) ? Integer.parseInt(value) : defaultValue;
		} catch (NumberFormatException e) {
			return defaultValue;
		}
	}

	private LocalDate parseDateOrDefault(String dateString) {
		try {
			return (dateString != null && !dateString.isEmpty())
					? LocalDate.parse(dateString, DateTimeFormatter.ISO_DATE)
					: null;
		} catch (Exception e) {
			return null;
		}
	}
}