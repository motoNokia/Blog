package com.ly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/website")
public class WebSiteController {
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String showWebsite(){
        return "website";
    }
}
