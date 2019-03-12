package com.trav.cms.msg.dao;

import java.util.List;

import com.trav.cms.msg.domain.Msg;

public interface MsgOper {
	/**
	 * @author forguo
	 * @date 2017-4-8
	 * 留言CURD操作接口
	 * */
	public List<Msg> listAll();
	
	public List<Msg> listMore(int offset,int size);
	
	public boolean addMsg(Msg msg);
	public boolean delMsg(int msgId);
	public boolean editMsg(Msg msg);
	
	
	/*
	 * 根据留言Id、名查找	
	 */
	public Msg findMsgById(int msgId);
	
	public Msg findMsgByName(String msgName);
	
}
