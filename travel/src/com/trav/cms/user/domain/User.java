package com.trav.cms.user.domain;

public class User {
	/**
	 * 用户实体类
	 * 
	 * @author admin
	 */

	/*
	 * user_id username password email register_time register_ip group_id gender
	 * user_pic
	 */
	private int  user_id;//ID
	private String username;//用户名
	private String password;//密码
	private String email;//邮箱
	private String register_time;//注册时间
	private String register_ip;//注册IP
	private int group_id;//角色
	private String gender;//性别
	private String user_pic;//头像
	
	
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegister_time() {
		return register_time;
	}
	public void setRegister_time(String register_time) {
		this.register_time = register_time;
	}
	public String getRegister_ip() {
		return register_ip;
	}
	public void setRegister_ip(String register_ip) {
		this.register_ip = register_ip;
	}
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUser_pic() {
		return user_pic;
	}
	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}
	
	/*
	 * 构造函数
	 */
	public User(int user_id, String username, String password, String email, String register_time, String register_ip,
			int group_id, String gender, String user_pic) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.register_time = register_time;
		this.gender = gender;
		
	}
	
	public User(String username, String password, String email, String register_time, String register_ip, int group_id,
			String gender, String user_pic) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.register_time = register_time;
		this.register_ip = register_ip;
		this.group_id = group_id;
		this.gender = gender;
		this.user_pic = user_pic;
	}
 
	public User(String username, String password, String email, String gender) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.gender = gender;
	}
	public User(String username, String password, String email, String register_ip, String gender) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.register_ip = register_ip;
		this.gender = gender;
	}
	public User(int user_id, String username, String email, String register_ip, String gender) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email = email;
		this.register_ip = register_ip;
		this.gender = gender;
	}
	public User(int user_id, String username, String email, String register_time, String register_ip, String gender) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email = email;
		this.register_time = register_time;
		this.register_ip = register_ip;
		this.gender = gender;
	}

	
}
