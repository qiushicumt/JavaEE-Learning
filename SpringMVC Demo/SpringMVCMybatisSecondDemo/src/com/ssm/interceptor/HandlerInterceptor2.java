package com.ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class HandlerInterceptor2 implements HandlerInterceptor {

	//	执行完Handler后执行此方法
	//	应用场景：统一异常处理、统一日志处理
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

	//	进入Handler后，返回ModelAndView前执行
	//	应用场景：从ModelAndView出发，将公用的数据模型，从这里传递到视图，也可以在这统一指定视图
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		
	}

	//	在执行Handler之前执行
	//	用于身份认证、身份授权等
	//	比如身份认证，如果认证不通过，则表示当前用户没有登陆，需要此方法进行拦截，不再向下执行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//	return false表示进行拦截，不继续向下执行
		//	return true表示不进行拦截，继续向下执行
		return true;
	}

}
