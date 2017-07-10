package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.User;

public interface UserDao {
	void insertUser(User user) throws Exception;
	void deleteUser(int userId) throws Exception;
	void updateUser(User user) throws Exception;
	User selectUserById(int userId) throws Exception;
	List<User> selectAllUsers() throws Exception;
}
