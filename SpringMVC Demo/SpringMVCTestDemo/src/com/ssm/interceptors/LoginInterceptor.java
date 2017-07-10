package com.ssm.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	
	//	Handler执行之前调用这个方法 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {
		//	获取用户提交的请求
		String url = request.getRequestURI();
		//	拦截任何非login的url请求
		if(url.indexOf("login")>=0) {
			return true;
		}
		//	获取session
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		
		if(username != null) {
			return true;
		}
		
		request.getRequestDispatcher("/WEB-INF/jsp/admin/login.jsp").forward(request, response);
		
		return false;
	}
	
	//	Handler执行之后，返回ModelAndView之前，调用此方法
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {
		
	}
	
	//	Handler执行完成后调用此方法
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) throws Exception {
		
		
	}
	
}
