package com.ly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String showArticle(){
        return "article";
    }

    @RequestMapping(value = "/addArticle")
    public String addArticle(){
        return "addArticle";
    }
}
