package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.UserCustomDao;
import com.ssm.dao.UserDao;
import com.ssm.pojo.User;
import com.ssm.pojo.UserCustom;
import com.ssm.pojo.UserQueryVo;
import com.ssm.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserCustomDao userCustomDao;
	
	@Autowired
	private UserDao userDao;

	@Override
	public List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception {
		// TODO Auto-generated method stub
		
		List<UserCustom> userCustoms = userCustomDao.findUserList(userQueryVo);
		
		return userCustoms;
	}

	@Override
	public void addUser(UserQueryVo userQueryVo) throws Exception {
		// TODO Auto-generated method stub
		UserCustom userCustom = userQueryVo.getUserCustom();
		userDao.insertUser(userCustom);
	}

	@Override
	public void deleteUser(Integer userid) throws Exception {
		// TODO Auto-generated method stub
		userDao.deleteUser(userid);
	}

	@Override
	public User findUserByUserId(Integer userid) throws Exception {
		User userCustom = userDao.selectUserById(userid);
		return userCustom;
	}

	@Override
	public void updateUser(UserCustom userCustom) throws Exception {
		userDao.updateUser(userCustom);
	}

	

}
