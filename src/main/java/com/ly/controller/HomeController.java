package com.ly.controller;

import com.ly.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    private UserService userService;
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(Model model){
        return "home";
    }
}
