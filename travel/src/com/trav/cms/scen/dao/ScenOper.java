package com.trav.cms.scen.dao;

import java.util.List;

import com.trav.cms.scen.domain.Scen;

public interface ScenOper {

	/*
	 * 景点CURD操作接口
	 * */
	
	public List<Scen> listAll();
	
	public List<Scen> listMore(int offset,int size);
	
	public boolean addScen(Scen scen);
	public boolean delScen(int scenid);
	public boolean editScen(Scen scen);
	
	
	
	/*
	 * 根据景点名查找	
	 */
	public Scen findScenById(int scenid);
	
	public  List<Scen> findScenByName(String scenname);
	
	
}
