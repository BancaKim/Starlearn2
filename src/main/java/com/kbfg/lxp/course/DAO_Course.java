package com.kbfg.lxp.course;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DAO_Course {

    private static final Logger logger = LoggerFactory.getLogger(DAO_Course.class);

    @Autowired
    private JdbcTemplate template;


    public ArrayList<DTO_Course> list() {
        logger.info("JdbcTemplate: {}", template);
        
       System.out.println("template"+template);
        if (template == null) {
            logger.error("JdbcTemplate is null. Please check the configuration.");
            return new ArrayList<DTO_Course>();
        }
        
        String query = "SELECT * FROM courses;";
        logger.info("Executing query: {}", query);
        
        return (ArrayList<DTO_Course>) template.query(query, new BeanPropertyRowMapper<DTO_Course>(DTO_Course.class));
    }
}
