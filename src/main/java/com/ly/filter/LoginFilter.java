package com.ly.filter;

import com.ly.bean.User;
import com.ly.util.Tools;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter  implements Filter{
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        String requestUrl = httpServletRequest.getRequestURI();
        String context = httpServletRequest.getContextPath();
        if (requestUrl.equals("/blog/")){
            httpServletResponse.sendRedirect(context+"/home");
            return;
        }
        if (requestUrl.contains("/admin")){
            if (httpServletRequest.getSession().getAttribute("user") != null){
                User user = (User)httpServletRequest.getSession().getAttribute("user");
                if (user.getAuthority()>1){
                    chain.doFilter(request,response);
                    return;
                }
                else {
                    Tools.makeResponseMessage(0,"你没有权限哦",null);
                    return;
                }
            }
            else {
                httpServletResponse.sendRedirect(context+"/adminLogin");
                return;
            }
        }
        chain.doFilter(request,response);
        return;
    }

    public void destroy() {

    }
}
