package com.ssm.service;

import java.util.List;

import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;

public interface ItemService {
	List<ItemCustom> findItemList(ItemQueryVo itemQueryVo) throws Exception;
	
	/**
	 * 根据商品id查询到的商品信息
	 * @param itemId：查询的商品的id
	 * @return
	 * @throws Exception
	 */
	ItemCustom getItemById(Integer itemId) throws Exception;
	
	/**
	 * 更新商品信息
	 * @param itemId：修改的商品的id
	 * @param itemCustom：修改的商品信息
	 * @throws Exception
	 */
	void updateItem(Integer itemId, ItemCustom itemCustom) throws Exception;
	
	/*
	Item getItemById(int itemId) throws Exception;
	void updateItem(Item item) throws Exception;
	*/
	
	void deleteItem(Integer itemId) throws Exception;
	
	/**
	 * 插入一条数据
	 * @param itemCustom
	 * @throws Exception
	 */
	void insertItem(ItemCustom itemCustom) throws Exception;
}
