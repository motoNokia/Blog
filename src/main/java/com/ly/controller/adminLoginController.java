package com.ly.controller;

import com.ly.bean.User;
import com.ly.util.Tools;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/backLogin")
public class adminLoginController {
    @RequestMapping(value = "")
    public String main(){
        return "background/login";
    }
    @RequestMapping(value = "/getIn")
    @ResponseBody
    public Object getIn(HttpServletRequest request){
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = new User();
        user.setUserName(userName);
        user.setPassword(password);
        user.setAuthority(3);
        request.getSession().setAttribute("user",user);
        return Tools.makeResponseMessage(1,"OK",null);
    }
}
