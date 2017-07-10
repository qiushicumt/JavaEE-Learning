package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;

public interface ItemCustomDao {
	List<ItemCustom> findItemsList(ItemQueryVo itemQueryVo) throws Exception;
}
