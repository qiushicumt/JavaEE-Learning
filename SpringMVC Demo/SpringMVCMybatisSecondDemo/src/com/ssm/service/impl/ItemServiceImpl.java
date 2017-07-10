package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ItemCustomDao;
import com.ssm.dao.ItemDao;
import com.ssm.pojo.Item;
import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;
import com.ssm.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	private ItemCustomDao itemCustomDao;
	
	@Autowired
	private ItemDao itemDao;

	@Override
	public List<ItemCustom> findItemList(ItemQueryVo itemQueryVo) throws Exception {

		return itemCustomDao.findItemsList(itemQueryVo);
	}

	@Override
	public ItemCustom getItemById(Integer itemId) throws Exception {
		
		Item item = itemDao.selectItemById(itemId);
		//	中间对商品信息进行业务处理
		//	......
		//	返回 ItemCustom
		ItemCustom itemCustom = new ItemCustom();
		//	BeanUtils.copyProperties()方法，可以把item类的属性值copy到itemCustom类中
		BeanUtils.copyProperties(item, itemCustom);
		
		return itemCustom;
	}

	@Override
	public void updateItem(Integer itemId, ItemCustom itemCustom) throws Exception {
		//	在进行商品信息更新前，要先对传入的关键数据字段进行校验
		//	通常是在service接口对关键参数进行校验
		
		//	此处，校验itemId是否为空，为空则抛出异常
		itemDao.updateItem(itemCustom);
	}

	@Override
	public void deleteItem(Integer itemId) throws Exception {
		itemDao.deleteItemById(itemId);
	}

	@Override
	public void insertItem(ItemCustom itemCustom) throws Exception {
		itemDao.insertItem(itemCustom);
	}
	
}
