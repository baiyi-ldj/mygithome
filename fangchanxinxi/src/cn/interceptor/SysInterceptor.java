package cn.interceptor;


import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import cn.pojo.Users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SysInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean flag=false;
        Users user=(Users)request.getSession().getAttribute("users");
        if(user!=null){
            flag=true;
        }else{
            response.sendRedirect(request.getContextPath()+"/error.jsp");
            flag=false;

        }
        return flag;
    }
}
