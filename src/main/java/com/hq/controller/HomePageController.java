package com.hq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {

    @RequestMapping("/test")
    public String homePage(){
        return "homepage";
    }
    @RequestMapping("/")
    public String homePage2(){
        return "addexpense";
    }
    @RequestMapping("/list")
    public  String listPage(){
        return "listexpense";
    }

    @RequestMapping("/addGroup")
    public  String addGroup(){
        return "addgroup";
    }

}
