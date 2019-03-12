package com.trav.cms.banner.domain;

public class Banner {
	/*
	 * 轮播图实体类
	 */
	
	private int banid;
	private String banname;
	private String bantitle;
	private String banpath;
	private int scenid;
	public int getScenid() {
		return scenid;
	}
	public void setScenid(int scenid) {
		this.scenid = scenid;
	}
	public int getBanid() {
		return banid;
	}
	public void setBanid(int banid) {
		this.banid = banid;
	}
	
	public String getBanname() {
		return banname;
	}
	public void setBanname(String banname) {
		this.banname = banname;
	}
	
	public String getBantitle() {
		return bantitle;
	}
	public void setBantitle(String bantitle) {
		this.bantitle = bantitle;
	}
	
	public String getBanpath() {
		return banpath;
	}
	public void setBanpath(String banpath) {
		this.banpath = banpath;
	}
	
	/*
	 * 构造函数
	 * 
	 */
	
	public Banner(int banid, String banname, String bantitle, String banpath,int scenid) {
		super();
		this.banid = banid;
		this.banname = banname;
		this.bantitle = bantitle;
		this.banpath = banpath;
		this.scenid = scenid;
	}
	
	public Banner(String banname, String bantitle, String banpath) {
		super();
		this.banname = banname;
		this.bantitle = bantitle;
		this.banpath = banpath;
	}
	public Banner(int banid, String banname, String bantitle, String banpath) {
		super();
		this.banid = banid;
		this.banname = banname;
		this.bantitle = bantitle;
		this.banpath = banpath;
	}
	public Banner(int banid, String banpath,int scenid) {
		super();
		this.banid = banid;
		this.banpath = banpath;
		this.scenid = scenid;
	}
	
	public Banner(String banname, String bantitle, String banpath,int scenid) {
		super();
		this.banname = banname;
		this.bantitle = bantitle;
		this.banpath = banpath;
		this.scenid = scenid;
	}
	
}
