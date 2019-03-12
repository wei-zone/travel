package com.trav.cms.info.dao;

import java.util.List;

import com.trav.cms.info.domain.Info;

public interface InfoOper {
	/**
	 * @author forguo
	 * @date 2017-4-8
	 * 资讯CURD操作接口
	 * */
	
	public List<Info> listAll();
	
	public List<Info> listMore(int offset,int size);
	
	public boolean addInfo(Info info);
	public boolean delInfo(int infoid);
	public boolean editInfo(Info info);
	
	
	
	/*
	 * 根据资讯Id、名查找	
	 */
	public Info findinfoById(int infoid);
	
	public Info findinfoByName(String infoname);
	
	
}
