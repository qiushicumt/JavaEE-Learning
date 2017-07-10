package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.ItemCustom;
import com.ssm.service.ItemService;

@Controller
public class ItemController4 {
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value="/ssm/items/itemlist", method=RequestMethod.GET)
	public ModelAndView queryItems() throws Exception {

		List<ItemCustom> itemCustoms = itemService.findItemsList(null);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("items", itemCustoms);
		modelAndView.setViewName("item/itemList");
		
		return modelAndView;
	}
	
}
