package com.prepup.controller;

import com.prepup.model.User;
import com.prepup.service.UserDetailsService;
import com.prepup.vo.UserDetailsVO;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	UserDetailsService userDetailsService;
	
    @GetMapping("/login")
    public String viewLogin(Model model){
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/login")
    public ModelAndView doLogin(@ModelAttribute("user") User user,HttpSession session){
        ModelAndView mav=new ModelAndView();
      
        if(userDetailsService.isValidUser(user)) {
        	UserDetailsVO userDetailsVO = userDetailsService.findUser(user);
//        	System.out.println(userDetailsVO);
        	 session.setAttribute("userDetailsVO", userDetailsVO);
//        	 System.out.println(session.getAttribute("userId"));
//        	model.addAttribute("userId", userDetailsVO.getUserid());
        	//System.out.println(model.getAttribute("userId"));
        	mav.addObject("userDetais", userDetailsVO);
        	if(userDetailsVO.getRole().equals("teacher")) 
        		mav.setViewName("teacher_dashboard");
        	else
        		mav.setViewName("student_dashboard");
        	
        }else {
        	mav.setViewName("login");
        	mav.addObject("error","Invalid Username and Password");//pass error
        }            
        return mav;
    }
}
