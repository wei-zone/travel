package com.trav.cms.user.dao;

import java.util.List;

import com.trav.cms.user.domain.User;

public interface UserOper {

	/**
	 * 用户CURD操作
	 * @author admin
	 */
	public List<User> listAll();
	public List<User> listMore(int offset,int size);
	public boolean addUser(User user);
	public boolean delUser(int user_id);
	public boolean editUser(User user);
	public boolean editPwd(int user_id,String password);
	
	/*
	 * 根据用户名查找	
	 */
	public User findUserByName(String user_name);
	public User findUserById(int user_id);
}
