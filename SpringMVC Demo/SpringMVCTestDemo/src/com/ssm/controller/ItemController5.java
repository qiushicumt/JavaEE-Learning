package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.ItemCustom;
import com.ssm.service.ItemService;

@Controller
@RequestMapping(value="/ssm/items/")
public class ItemController5 {
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value="/itemview/{itemid}")
	public @ResponseBody ItemCustom queryItem(@PathVariable("itemid") Integer item_id) throws Exception {
		ItemCustom itemCustom = itemService.findItemByItemId(item_id);
		
		return itemCustom;
	}
	
}
