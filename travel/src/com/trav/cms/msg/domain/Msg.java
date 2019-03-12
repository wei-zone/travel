package com.trav.cms.msg.domain;

public class Msg {
	/**
	 * @author foruo
	 * @date 2017-4-8 留言实体类
	 */

	private int msg_id;
	private String author;
	private String msg_text;
	private String msg_time;
	private String msg_ip;
	private String email;
	
	/*
	 * 构造器、访问器
	 */
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getMsg_text() {
		return msg_text;
	}
	public void setMsg_text(String msg_text) {
		this.msg_text = msg_text;
	}
	public String getMsg_time() {
		return msg_time;
	}
	public void setMsg_time(String msg_time) {
		this.msg_time = msg_time;
	}
	public String getMsg_ip() {
		return msg_ip;
	}
	public void setMsg_ip(String msg_ip) {
		this.msg_ip = msg_ip;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	/*
	 * 构造函数
	 */
	public Msg(int msg_id, String author, String msg_text, String msg_time, String msg_ip, String email) {
		super();
		this.msg_id = msg_id;
		this.author = author;
		this.msg_text = msg_text;
		this.msg_time = msg_time;
		this.msg_ip = msg_ip;
		this.email = email;
	}
	
	public Msg(  String author, String msg_text, String msg_time, String msg_ip, String email) {
		super();
		 
		this.author = author;
		this.msg_text = msg_text;
		this.msg_time = msg_time;
		this.msg_ip = msg_ip;
		this.email = email;
	}
	
 
	public Msg(int msg_id, String author, String msg_text, String msg_time, String email) {
		super();
		this.msg_id = msg_id;
		this.author = author;
		this.msg_text = msg_text;
		this.msg_time = msg_time;
		this.email = email;
	}
	public Msg(String author, String msg_text, String msg_ip, String email) {
		super();
		this.author = author;
		this.msg_text = msg_text;
		this.msg_ip = msg_ip;
		this.email = email;
	}
 
	
	
}
