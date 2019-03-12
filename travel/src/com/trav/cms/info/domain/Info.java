package com.trav.cms.info.domain;

public class Info {
	/**
	 * @author forguo
	 * @version 1.0
	 * @date 2017-4-8 资讯实体类
	 */

	private int info_id;// Id
	private String info_title;//标题
	private String info_txt;//内容
	private String info_tag;//标签，分类
	private String info_pic;//图片
	private String info_url;//连接
	private String info_date;//日期
	private int info_order;//日期
	
	public int getInfo_id() {
		return info_id;
	}
	public void setInfo_id(int info_id) {
		this.info_id = info_id;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_txt() {
		return info_txt;
	}
	public void setInfo_txt(String info_txt) {
		this.info_txt = info_txt;
	}
	public String getInfo_tag() {
		return info_tag;
	}
	public void setInfo_tag(String info_tag) {
		this.info_tag = info_tag;
	}
	public String getInfo_pic() {
		return info_pic;
	}
	public void setInfo_pic(String info_pic) {
		this.info_pic = info_pic;
	}
 
	public String getInfo_url() {
		return info_url;
	}
	public void setInfo_url(String info_url) {
		this.info_url = info_url;
	}
	public String getInfo_date() {
		return info_date;
	}
	public void setInfo_date(String info_date) {
		this.info_date = info_date;
	}
	
	
	public int getInfo_order() {
		return info_order;
	}
	public void setInfo_order(int info_order) {
		this.info_order = info_order;
	}
	/*
	 * 构造函数
	 */
	public Info(int info_id, String info_title, String info_txt, String info_tag, String info_pic, 
			String info_url, String info_date,int info_order) {
		super();
		this.info_id = info_id;
		this.info_title = info_title;
		this.info_txt = info_txt;
		this.info_tag = info_tag;
		this.info_pic = info_pic;
	 
		this.info_url = info_url;
		this.info_date = info_date;
		this.info_order = info_order;
	}
	
	public Info(String info_title, String info_txt, String info_tag, String info_pic, 
			String info_url, String info_date,int info_order) {
		super();
		this.info_title = info_title;
		this.info_txt = info_txt;
		this.info_tag = info_tag;
		this.info_pic = info_pic;
 
		this.info_url = info_url;
		this.info_date = info_date;
		this.info_order = info_order;
	}
	public Info(String info_title, String info_txt, String info_tag, String info_pic, String info_url, int info_order) {
		super();
		this.info_title = info_title;
		this.info_txt = info_txt;
		this.info_tag = info_tag;
		this.info_pic = info_pic;
		this.info_url = info_url;
		this.info_order = info_order;
	}
	
	
	

}
