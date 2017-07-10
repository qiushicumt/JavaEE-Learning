package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.ItemCustom;

@Controller
@RequestMapping(value="/json/")
public class JsonController {
	
	@RequestMapping(value="/jsonTest")
	public String jsonIndex() throws Exception {
		return "/json/jsonTest";
	}

	//	请求json数据，输出json数据
	//	@RequestBody修饰形参，用于将传入的json数据转换为java的ItemCustom对象
	//	@ResponseBody修饰返回值，用于将返回值的java对象转换为json数据
	@RequestMapping(value="/jsonRequest", method=RequestMethod.POST)
	public @ResponseBody ItemCustom requestJson(@RequestBody ItemCustom itemCustom) throws Exception {
		return itemCustom;
	}
	
	//	请求key-value格式数据，输出json数据
	//	请求key-value数据时，不需要转换形参
	//	@ResponseBody修饰返回值，用于将返回值的java对象转换为json数据
	@RequestMapping(value="/jsonResponse", method=RequestMethod.POST)
	public @ResponseBody ItemCustom responseJson(ItemCustom itemCustom) throws Exception {
		return itemCustom;
	}
}
