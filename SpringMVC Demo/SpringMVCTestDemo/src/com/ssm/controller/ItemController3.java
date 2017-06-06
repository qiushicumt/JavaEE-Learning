package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.Item;

/**
 * ע��ķ�ʽ����springmvc-servlet������Ҫʵ�ֵ�Handler
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
		item1.setItemName("����ʼǱ�Y470");
		item1.setItemPrice(4199.00);
		item1.setItemDetail("����ʼǱ�Y470��CPU:I3-3210���ڴ�:4GB��Ӳ��:500GB���Կ�:Ӣ�ض����ļ����Կ�");
		item1.setItemPic("D:\\pictures\\notebook\\lenovo\\y470.jpg");
		
		Item item2 = new Item();
		item2.setItemId(2);
		item2.setItemName("ƻ��iPhone6");
		item2.setItemPrice(5699.00);
		item2.setItemDetail("iPhone 6��4.7Ӣ����Ļ���ֱ���Ϊ1334*750���أ�CPUΪA8������������800�����ؾ�ͷ��ǰ��120�����ظ�������ͷ������Touch ID֧��ָ��ʶ������NFC���ܣ�4G LTE�����ٶȿɴ�150Mbps��֧�ֶ��20��LTEƵ�Ρ�");
		item2.setItemPic("D:\\pictures\\cellphone\\apple\\iphone6.jpg");
		
		items.add(item1);
		items.add(item2);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("items", items);
		modelAndView.setViewName("/WEB-INF/jsp/item/itemList.jsp");
		
		return modelAndView;
	}
	
}
