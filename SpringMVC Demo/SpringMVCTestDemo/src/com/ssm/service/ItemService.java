package com.ssm.service;

import java.util.List;

import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;

public interface ItemService {
	List<ItemCustom> findItemsList(ItemQueryVo itemQueryVo) throws Exception;
	ItemCustom findItemByItemId(Integer itemid) throws Exception;
}
