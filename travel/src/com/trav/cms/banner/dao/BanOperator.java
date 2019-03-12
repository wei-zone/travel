package com.trav.cms.banner.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trav.cms.banner.domain.Banner;
import com.trav.cms.util.DbUtil;

public class BanOperator implements BanOper{

	@Override
	public List<Banner> listAll() {
		// TODO Auto-generated method stub
		Connection conn=null;
		List<Banner> list=new ArrayList<Banner>();
		PreparedStatement pStatement=null;
		ResultSet rSet=null;
		
		try {
			// 创建连接
			conn=DbUtil.getConn();
			
			// Sql语句
			String sql = "select * from t_banner order by ban_id";
			System.out.println("*****列出所有:******   " + sql);
			pStatement=conn.prepareStatement(sql);
			
			// 执行Sql返回结果集
			rSet=pStatement.executeQuery();
			
			
			while (rSet.next()) {
				
				int banid=rSet.getInt("ban_id");
				String banname=rSet.getString("ban_name");
				String bantitle=rSet.getString("ban_title");
				String banpath=rSet.getString("ban_path");
				int scenid=rSet.getInt("scen_id");
				
				Banner banner=new Banner(banid, banname, bantitle, banpath,scenid);
				
				list.add(banner);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			// 关闭连接
			DbUtil.closeConn(conn, pStatement, rSet);
		}
		return list;	
	}

	@Override
	public boolean addBan(Banner banner) throws IOException {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pStatement=null;
		int add=0;
		boolean isAdd=false;
		
		try {
			// 创建连接
			conn=DbUtil.getConn();
			
			// Sql语句
			String sql = "insert into t_banner (ban_name,ban_title,ban_path) values(?,?,?)";
			pStatement=conn.prepareStatement(sql);
			System.out.println("*****插入图片轮播:******   " + sql);
			
			
			pStatement.setString(1, banner.getBanname());
			pStatement.setString(2, banner.getBantitle());
			pStatement.setString(3, banner.getBanpath());
			
			// 执行Sql返回结果集
			add=pStatement.executeUpdate();
			if (add>0) {
				isAdd=true;
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			// 关闭连接
			DbUtil.closeConn(conn, pStatement, null);
		}
		return isAdd;
	}

	@Override
	public boolean delBan(int banid) {
		Connection conn=null;
		PreparedStatement pStatement=null;
		int delete=0;
		boolean isDel=false;
		
		try {
			// 创建连接
			conn=DbUtil.getConn();
			
			// Sql语句
			String sql = "delete from t_banner where ban_id=?";
			pStatement=conn.prepareStatement(sql);
			System.out.println("*****删除图片轮播:******   " + sql);
			
			//传入参数
			pStatement.setInt(1, banid);
			
			// 执行Sql返回结果集
			delete=pStatement.executeUpdate();
			if (delete>0) {
				isDel=true;
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			// 关闭连接
			DbUtil.closeConn(conn, pStatement, null);
		}
		return isDel;
	}

	@Override
	public boolean editBan(Banner banner) {
		// TODO Auto-generated method stub
		boolean isEdit=false;
		int count=0;
		Connection connection=null;
		PreparedStatement pStatement=null;
		
		
		try {
			connection=DbUtil.getConn();
			String sql="update t_banner set ban_name=?,ban_title=?,ban_path=? where ban_id=?";
			
			pStatement=connection.prepareStatement(sql);
			System.out.println("*****编辑图片轮播:******   " + sql);
			
			pStatement.setString(1, banner.getBanname());
			pStatement.setString(2, banner.getBantitle());
			pStatement.setString(3, banner.getBanpath());
			pStatement.setInt(4, banner.getBanid());
			
			count=pStatement.executeUpdate();
			if (count>0) {
				isEdit=true;
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			// 关闭连接
			DbUtil.closeConn(connection, pStatement, null);
		}
		
		return isEdit;
	}

	@Override
	public Banner findPicByName(String picname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
