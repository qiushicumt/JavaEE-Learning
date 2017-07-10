package com.ssm.service;

import java.util.List;

import com.ssm.pojo.User;
import com.ssm.pojo.UserCustom;
import com.ssm.pojo.UserQueryVo;

public interface UserService {
	
	/**
	 * 根据条件查询User
	 * @param userQueryVo	查询条件扩展类
	 * @return List<UserCustom>		返回UserCustom
	 * @throws Exception
	 */
	List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception;
	
	/**
	 * 新增用户
	 * @param userQueryVo
	 * @throws Exception
	 */
	void addUser(UserQueryVo userQueryVo) throws Exception;
	
	/**
	 * 根据传入的userid，删除用户
	 * @param userid
	 * @throws Exception
	 */
	void deleteUser(Integer userid) throws Exception;
	
	User findUserByUserId(Integer userid) throws Exception;
	
	void updateUser(UserCustom userCustom) throws Exception;
	
}
