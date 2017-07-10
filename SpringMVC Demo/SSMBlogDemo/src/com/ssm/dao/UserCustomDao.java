package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.UserCustom;
import com.ssm.pojo.UserQueryVo;

public interface UserCustomDao {
	List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception;
}
