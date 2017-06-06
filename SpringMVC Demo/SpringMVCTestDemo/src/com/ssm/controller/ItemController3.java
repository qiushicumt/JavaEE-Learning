package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.Item;

/**
 * 注解的方式配置springmvc-servlet，所需要实现的Handler
 * @author Administrator
 *
 */

@Controller
public class ItemController3 {
	
	@RequestMapping("/items/queryItems")
	public ModelAndView queryItems() throws Exception {
		
		List<Item> items = new ArrayList<Item>();
		
		Item item1 = new Item();
		item1.setItemId(1);
		item1.setItemName("联想笔记本Y470");
		item1.setItemPrice(4199.00);
		item1.setItemDetail("联想笔记本Y470，CPU:I3-3210，内存:4GB，硬盘:500GB，显卡:英特尔核心集成显卡");
		item1.setItemPic("D:\\pictures\\notebook\\lenovo\\y470.jpg");
		
		Item item2 = new Item();
		item2.setItemId(2);
		item2.setItemName("苹果iPhone6");
		item2.setItemPrice(5699.00);
		item2.setItemDetail("iPhone 6，4.7英寸屏幕，分辨率为1334*750像素，CPU为A8处理器，后置800万像素镜头，前置120万像素高清摄像头，加入Touch ID支持指纹识别，新增NFC功能，4G LTE连接速度可达150Mbps，支持多达20个LTE频段。");
		item2.setItemPic("D:\\pictures\\cellphone\\apple\\iphone6.jpg");
		
		items.add(item1);
		items.add(item2);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("items", items);
		modelAndView.setViewName("/WEB-INF/jsp/item/itemList.jsp");
		
		return modelAndView;
	}
	
}
