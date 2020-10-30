package com.prepup.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prepup.model.UserDetails;
import com.prepup.service.UserDetailsService;
import com.prepup.vo.UserDetailsVO;

@Controller
public class UpdateController {
	@Autowired
	UserDetailsService userDetailsService;
	
    @GetMapping("/updateprofilete")
    public String viewUpdate(Model model,HttpSession session){

        model.addAttribute("userdetails", new UserDetails());
        //System.out.println(session.getAttribute("userDetailsVO"));
        return "updateprofilete";
    }

    @PostMapping("/updateprofilete")
    public ModelAndView doUpdate(@ModelAttribute("userdetails") UserDetails user){
    	 ModelAndView mav=new ModelAndView();

    	//System.out.println(user);
    	
    	
    	if(userDetailsService.updateUser(user).equals(true))
    	{
    		mav.setViewName("updateprofilete");
    		mav.addObject("messagesuccess","Profile Updated Succesfully");//message update profile
    		
    	}
    	else {
    		mav.setViewName("updateprofilete");
    		mav.addObject("messageerror","Update Failed");//message update profile
    		
    	}

        return mav;
    }
    
    @GetMapping("/updateprofilest")
    public String viewUpdatest(Model model,HttpSession session){

        model.addAttribute("userdetails", new UserDetails());
        //System.out.println(session.getAttribute("userDetailsVO"));
        return "updateprofilest";
    }

    @PostMapping("/updateprofilest")
    public ModelAndView doUpdatest(@ModelAttribute("userdetails") UserDetails user){
    	 ModelAndView mav=new ModelAndView();

    	//System.out.println(user);
    	
    	
    	if(userDetailsService.updateUser(user).equals(true))
    	{
    		mav.setViewName("updateprofilest");
    		mav.addObject("messagesuccess","Profile Updated Succesfully");//message update profile
    		
    	}
    	else {
    		mav.setViewName("updateprofilest");
    		mav.addObject("messageerror","Update Failed");//message update profile
    		
    	}

        return mav;
    }
}
