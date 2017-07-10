package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FetchController {
	
	@RequestMapping("fetch")
	public String index() {
		return "fetch";
	}
	
}