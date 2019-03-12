package com.trav.cms.scen.domain;

public class Scen {
	/** @author forguo
	 *  
	 * 景点的实体类
	 * 
	 * scen_id 
	 * scen_name 
	 * scen_intro 
	 * scen_level 
	 * scen_title 
	 * scen_feature
	 * scen_traff 
	 * scen_map 
	 * pic_path 
	 * video_path 
	 * scen_add 
	 * scen_name_en
	 * scen_order
	 * scen_url
	 */

	private int scenid;//Id
	private String scenname;//名表横
	private String scenintro;//介绍
	private String scenlevel;//星级
	private String scentitle;//标题
	private String scenfeature;//特色
	private String scentraff;//交通
	private String scenmap;//地图
	private String picpath;//图片
	private String scenadd;//地址
	private String scennameen;//英文名
	private int scenorder;//排序
	private String scenurl;//URL
	public int getScenid() {
		return scenid;
	}
	public void setScenid(int scenid) {
		this.scenid = scenid;
	}
	public String getScenname() {
		return scenname;
	}
	public void setScenname(String scenname) {
		this.scenname = scenname;
	}
	public String getScenintro() {
		return scenintro;
	}
	public void setScenintro(String scenintro) {
		this.scenintro = scenintro;
	}
	public String getScenlevel() {
		return scenlevel;
	}
	public void setScenlevel(String scenlevel) {
		this.scenlevel = scenlevel;
	}
	public String getScentitle() {
		return scentitle;
	}
	public void setScentitle(String scentitle) {
		this.scentitle = scentitle;
	}
	public String getScenfeature() {
		return scenfeature;
	}
	public void setScenfeature(String scenfeature) {
		this.scenfeature = scenfeature;
	}
	public String getScentraff() {
		return scentraff;
	}
	public void setScentraff(String scentraff) {
		this.scentraff = scentraff;
	}
	public String getScenmap() {
		return scenmap;
	}
	public void setScenmap(String scenmap) {
		this.scenmap = scenmap;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public String getScenadd() {
		return scenadd;
	}
	public void setScenadd(String scenadd) {
		this.scenadd = scenadd;
	}
	public String getScennameen() {
		return scennameen;
	}
	public void setScennameen(String scennameen) {
		this.scennameen = scennameen;
	}
	public int getScenorder() {
		return scenorder;
	}
	public void setScenorder(int scenorder) {
		this.scenorder = scenorder;
	}
	public String getScenurl() {
		return scenurl;
	}
	public void setScenurl(String scenurl) {
		this.scenurl = scenurl;
	}
	
	/*
	 * 构造函数
	 * */
	
	
	public Scen(int scenid, String scenname, String scenintro, String scenlevel, String scentitle, String scenfeature,
			String scentraff, String scenmap, String picpath, String scenadd, String scennameen, int scenorder,
			String scenurl) {
		super();
		this.scenid = scenid;
		this.scenname = scenname;
		this.scenintro = scenintro;
		this.scenlevel = scenlevel;
		this.scentitle = scentitle;
		this.scenfeature = scenfeature;
		this.scentraff = scentraff;
		this.scenmap = scenmap;
		this.picpath = picpath;
		this.scenadd = scenadd;
		this.scennameen = scennameen;
		this.scenorder = scenorder;
		this.scenurl = scenurl;
	}
	
	
	public Scen(String scenname, String scenintro, String scenlevel, String scentitle, String scenfeature,
			String scentraff, String scenmap, String picpath, String scenadd, String scennameen, int scenorder,
			String scenurl) {
		super();
		this.scenname = scenname;
		this.scenintro = scenintro;
		this.scenlevel = scenlevel;
		this.scentitle = scentitle;
		this.scenfeature = scenfeature;
		this.scentraff = scentraff;
		this.scenmap = scenmap;
		this.picpath = picpath;
		this.scenadd = scenadd;
		this.scennameen = scennameen;
		this.scenorder = scenorder;
		this.scenurl = scenurl;
	}
	
	
	
	

	
	
}
