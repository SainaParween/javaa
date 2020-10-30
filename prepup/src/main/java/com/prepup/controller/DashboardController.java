package com.prepup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
    @RequestMapping("/index")
    public String home() {
        System.out.println("Going home...");
        return "index";
    }
}
