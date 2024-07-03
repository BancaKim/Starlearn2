package com.kbfg.lxp.course;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Component
public class CourseResisterAction implements CourseCommand {
    @Override
    public void execute(Model model) throws Exception {

        Map<String, Object> map = model.asMap();
        HttpServletRequest request = (HttpServletRequest) map.get("request");

        String realFolder = "";
        String saveFolder = "/userupload";

        int fileSize = 5 * 1024 * 1024;

        realFolder = request.getServletContext().getRealPath(saveFolder);
        boolean result = false;

        DTO_Course course = new DTO_Course();
        DAO_Course dao = new DAO_Course();

        try {
            MultipartRequest multi = new MultipartRequest(request, realFolder, fileSize, "utf-8", new DefaultFileRenamePolicy());

            course.setCourse_name(multi.getParameter("course_name"));
            course.setSession_number(parseIntOrDefault(multi.getParameter("session_number"), 0));
            course.setCourse_category(multi.getParameter("course_category"));
            course.setCourse_subcategory(multi.getParameter("course_subcategory"));
            course.setCourse_start_date(parseDateOrDefault(multi.getParameter("course_start_date")));
            course.setCourse_end_date(parseDateOrDefault(multi.getParameter("course_end_date")));
            course.setCourse_entrol_start_date(parseDateOrDefault(multi.getParameter("course_entrol_start_date")));
            course.setCourse_entrol_end_date(parseDateOrDefault(multi.getParameter("course_entrol_end_date")));
            course.setCourse_cancel_start_date(parseDateOrDefault(multi.getParameter("course_cancel_start_date")));
            course.setCourse_cancel_end_date(parseDateOrDefault(multi.getParameter("course_cancel_end_date")));
            course.setProgress_status(multi.getParameter("progress_status"));
            course.setMileage(parseIntOrDefault(multi.getParameter("mileage"), 0));
            course.setCourse_summary(multi.getParameter("course_summary"));
            course.setCourse_details(multi.getParameter("course_details"));
            course.setEvaluation_style(multi.getParameter("evaluation_style"));
            course.setTraining_type(multi.getParameter("training_type"));
            course.setOperating_firm(multi.getParameter("operating_firm"));
            course.setCourse_difficulty(multi.getParameter("course_difficulty"));
            course.setMaterial_availabe(multi.getParameter("material_availabe"));
            course.setEvaluation_date(multi.getParameter("evaluation_date"));
            course.setEvaluation_date_second(multi.getParameter("evaluation_date_second"));
            course.setManager_approval(multi.getParameter("manager_approval"));
            course.setCourse_capacity(parseIntOrDefault(multi.getParameter("course_capacity"), 0));
            course.setCourse_count(parseIntOrDefault(multi.getParameter("course_count"), 0));
            course.setCourse_proflie(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
      
            System.out.println("course.getCourse_name() :" + course.getCourse_name());
            System.out.println("course.getCourse_start_date() :" + course.getCourse_start_date());

            if(dao.insert(course)) {
            	System.out.println("dao.insert(course): 연수과정 입력이 정상적으로 수행되었습니다.");
				model.addAttribute("message", "연수과정 입력이 정상적으로 수행되었습니다.");
				model.addAttribute("nextPage", "redirect:courseApplyView");
            }
            else {
            	model.addAttribute("message", "연수과정 입력에 실패했습니다.");
				model.addAttribute("nextPage", "course/courseResister");
            };

        } catch (Exception ex) {
            ex.printStackTrace();
        }
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
            return (dateString != null && !dateString.isEmpty()) ? LocalDate.parse(dateString, DateTimeFormatter.ISO_DATE) : null;
        } catch (Exception e) {
            return null;
        }
    }
}