package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.Item;

public interface ItemDao {
	void insertItem(Item item) throws Exception;
	void deleteItemById(int itemId) throws Exception;
	void updateItem(Item item) throws Exception;
	Item selectItemById(int itemId) throws Exception;
	List<Item> selectAllItems() throws Exception;
}
