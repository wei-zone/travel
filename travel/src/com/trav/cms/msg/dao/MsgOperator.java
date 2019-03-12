package com.trav.cms.msg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

 
import com.trav.cms.msg.domain.Msg;
import com.trav.cms.util.DbUtil;

public class MsgOperator implements MsgOper {

	/**
	 * @author forguo
	 * @date 2017-4-8 实现留言CURD接口
	 */

	@Override
	public List<Msg> listAll() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		// 必要的变量
		Connection connection = null;
		List<Msg> list = new ArrayList<Msg>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;

		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_msg order by msg_time desc";
			pStatement = connection.prepareStatement(sql);
			System.out.println("查询所有留言----" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			while (rSet.next()) {
				int msg_id = rSet.getInt("msg_id");
				String author = rSet.getString("author");
				String msg_text   = rSet.getString("msg_text");
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); 
				String msg_time = sdf.format(rSet.getDate("msg_time")) +" "+rSet.getTime("msg_time");
				String msg_ip     = rSet.getString("msg_ip");
				String email      =rSet.getString("email");	
				
				System.out.println("ID---" + msg_id + "||||排序---" + msg_time);

				// 得到msg对象
				Msg msg = new Msg(msg_id, author, msg_text, msg_time,msg_ip, email);

				// 追加到list集合
				list.add(msg);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbUtil.closeConn(connection, pStatement, rSet);
		}

		return list;
	}

	@Override
	public List<Msg> listMore(int offset, int size) {
		// TODO Auto-generated method stub
		Connection connection = null;
		List<Msg> list = new ArrayList<Msg>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;

		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_msg order by msg_time desc limit ?,?";
			pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, offset);
			pStatement.setInt(2, size);

			System.out.println("-加载更多留言信息-----" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			while (rSet.next()) {
				int msg_id = rSet.getInt("msg_id");
				String author = rSet.getString("author");
				String msg_text   = rSet.getString("msg_text");
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); 
				String msg_time = sdf.format(rSet.getDate("msg_time")) +" "+rSet.getTime("msg_time");
				
				String msg_ip     = rSet.getString("msg_ip");
				String email      =rSet.getString("email");	
				
				System.out.println("ID---" + msg_id + "||||排序---" + msg_time);

				// 得到msg对象
				Msg msg = new Msg(msg_id, author, msg_text, msg_time,msg_ip, email);

				// 追加到list集合
				list.add(msg);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbUtil.closeConn(connection, pStatement, rSet);
		}

		return list;
	}

	@Override
	public boolean addMsg(Msg msg) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isAdd = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			/*
			 *  author
				msg_text  
				msg_time  
				msg_ip    

			 * */
			String sql = "insert into t_msg (author,email,msg_text,msg_ip,msg_time) values(?,?,?,?,now())";
			pStatement = connection.prepareStatement(sql);
			System.out.println(sql);
			
			pStatement.setString(1, msg.getAuthor());
			pStatement.setString(2, msg.getEmail());
			pStatement.setString(3, msg.getMsg_text());
			pStatement.setString(4, msg.getMsg_ip());
			
			
			count = pStatement.executeUpdate();
			if (count > 0) {
				isAdd = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbUtil.closeConn(connection, pStatement, null);
		}
		return isAdd;
	}

	@Override
	public boolean delMsg(int msgid) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isDel = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "delete from t_msg where msg_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("删除留言------" + msgid);
			System.out.println("SQL----------" + sql);
			System.out.println();

			pStatement.setInt(1, msgid);

			count = pStatement.executeUpdate();
			if (count > 0) {
				isDel = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbUtil.closeConn(connection, pStatement, null);
		}

		return isDel;
	}

	@Override
	public boolean editMsg(Msg msg) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Msg findMsgById(int msgId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Msg findMsgByName(String msgName) {
		// TODO Auto-generated method stub
		return null;
	}

}
