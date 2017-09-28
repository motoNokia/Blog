package com.ly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class BackgroundController {
    @RequestMapping(value = "/index")
    public String BackLogin(){
        return "background/index";
    }

}
