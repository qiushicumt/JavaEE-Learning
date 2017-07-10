package com.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/ssm/")
public class LoginController {
	
	@RequestMapping("/index")
	public String loginView() throws Exception {
		return "admin/login";
	}
	
	@RequestMapping(value="/login", method={RequestMethod.POST, RequestMethod.GET})
	public String login(HttpSession session, String username, String password) throws Exception {
		//	通过session来保存用户登录信息
		session.setAttribute("username", username);
		return "redirect:/ssm/hello";
	}
	
	@RequestMapping(value="/logout")
	public String loginOut(HttpSession session) throws Exception {
		//	用于清除session
		session.invalidate();
		return "redirect:/ssm/login";
	}
	
	
	@RequestMapping(value="/hello")
	public String loginHello(Model model) throws Exception {
		String message = "SpringMVC";
		model.addAttribute("message", message);
		return "admin/hello";
	}
	
}
