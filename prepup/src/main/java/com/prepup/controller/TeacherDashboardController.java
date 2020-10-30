package com.prepup.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.prepup.model.UserDetails;
import com.prepup.vo.UserDetailsVO;


@Controller
public class TeacherDashboardController {

	 @RequestMapping("/teacherDash")
	    public String teacharDash( Model model,HttpSession session) {

	        model.addAttribute("userdetails", new UserDetailsVO());
	        return "teacher_dashboard";
	    }
	 @RequestMapping("/studentDash")
	    public String studentDash( Model model,HttpSession session) {
		 model.addAttribute("userdetails", new UserDetailsVO());
	        return "student_dashboard";
	    }
}
