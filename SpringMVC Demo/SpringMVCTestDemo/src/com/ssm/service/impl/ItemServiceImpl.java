package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ItemDao;
import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;
import com.ssm.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;
	
	@Override
	public List<ItemCustom> findItemsList(ItemQueryVo itemQueryVo) throws Exception {
		// TODO Auto-generated method stub
		return itemDao.findItemsList(itemQueryVo);
	}

	@Override
	public ItemCustom findItemByItemId(Integer itemid) throws Exception {
		ItemCustom itemCustom = itemDao.findItemByItemId(itemid);
		return itemCustom;
	}

}
