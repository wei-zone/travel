package com.trav.cms.info.dao;

import java.sql.Connection;
 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.trav.cms.info.domain.Info;
import com.trav.cms.util.DbUtil;

public class InfoOperator implements InfoOper {
	/**
	 * @author forguo
	 * @date 2017-4-8 实现资讯CURD接口
	 */

	@Override
	public List<Info> listAll() {
		// TODO Auto-generated method stub
		// 必要的变量
		Connection connection = null;
		List<Info> list = new ArrayList<Info>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;

		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_info order by info_order desc";
			pStatement = connection.prepareStatement(sql);
			System.out.println("查询所有资讯----" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			while (rSet.next()) {
				 
				
				int info_id = rSet.getInt("info_id");
				String info_title = rSet.getString("info_title");
				String info_txt = rSet.getString("info_txt");
				String info_tag = rSet.getString("info_tag");
				String info_pic = rSet.getString("info_pic");
				String info_url = rSet.getString("info_url");
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); 
				String info_date = sdf.format(rSet.getDate("info_date")) +" "+rSet.getTime("info_date");
				int info_order = rSet.getInt("info_order");

				System.out.println("ID***" + info_id + "||||排序---" + info_order);

				// 得到Info对象
				Info info = new Info(info_id, info_title, info_txt, info_tag, info_pic, info_url, info_date,
						info_order);

				// 追加到list集合
				list.add(info);
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
	public List<Info> listMore(int offset, int size) {
		// TODO Auto-generated method stub
		// 必要的变量
		Connection connection = null;
		List<Info> list = new ArrayList<Info>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;

		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_info order by info_order desc limit ?,?";
			pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, offset);
			pStatement.setInt(2, size);

			System.out.println("-加载更多资讯信息-----" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			// 遍历结果集
			while (rSet.next()) {

				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
				//Date date=new Date();  
				
				int info_id = rSet.getInt("info_id");
				String info_title = rSet.getString("info_title");
				String info_txt = rSet.getString("info_txt");
				String info_tag = rSet.getString("info_tag");
				String info_pic = rSet.getString("info_pic");
				String info_url = rSet.getString("info_url");
				/*String info_date = sdf.format(rSet.getDate("info_date"));*/
				 
				String info_date = sdf.format(rSet.getDate("info_date"));
				 
				int info_order = rSet.getInt("info_order");
				System.out.println(sdf.format(rSet.getDate("info_date")));
				
				System.out.println("ID---" + info_id + "||||日期---" + info_date);

				// 得到Info对象
				Info info = new Info(info_id, info_title, info_txt, info_tag, info_pic, info_url, info_date,
						info_order);

				// 追加到list集合
				list.add(info);

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
	public boolean addInfo(Info info) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isAdd = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "insert into t_info (info_title, info_txt, info_tag, info_pic, info_url, info_order,info_date)"+
						 "values(?,?,?,?,?,?,now())";
			pStatement = connection.prepareStatement(sql);
			System.out.println("新增资讯---" + sql);
			System.out.println();

			pStatement.setString(1, info.getInfo_title());
			pStatement.setString(2, info.getInfo_txt());
			pStatement.setString(3, info.getInfo_tag());
			pStatement.setString(4, info.getInfo_pic());
			pStatement.setString(5, info.getInfo_url());
			pStatement.setInt(6, info.getInfo_order());
			
			
		/*	try {
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); 
				pStatement.setDate(7, (Date) sdf.parse(""));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/

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
	public boolean delInfo(int infoid) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isDel = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "delete from t_info where info_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("删除资讯------" + infoid);
			System.out.println("SQL----------" + sql);
			System.out.println();

			pStatement.setInt(1, infoid);

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
	public boolean editInfo(Info info) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isEdit = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "update t_info set info_title=?, info_txt=?,info_tag=?,info_pic=?,info_url=?,info_order=?,info_date=now() where info_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("编辑景点---" + info.getInfo_id());
			System.out.println("  SQL  ---" + sql);
			System.out.println();

			pStatement.setString(1, info.getInfo_title());
			pStatement.setString(2, info.getInfo_txt());
			pStatement.setString(3, info.getInfo_tag());
			pStatement.setString(4, info.getInfo_pic());
			pStatement.setString(5, info.getInfo_url());
			pStatement.setInt(6, info.getInfo_order());
			pStatement.setInt(7, info.getInfo_id());
			

			count = pStatement.executeUpdate();
			if (count > 0) {
				isEdit = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbUtil.closeConn(connection, pStatement, null);
		}

		return isEdit;
	}

	@Override
	public Info findinfoById(int infoid) {
		// TODO Auto-generated method stub
		// 必要的变量
				Connection connection = null;
				 
				ResultSet rSet = null;
				PreparedStatement pStatement = null;
				Info info=null;//返回的scen
				try {
					// 创建连接
					connection = DbUtil.getConn();

					// 创建SQL语句
					String sql = "select * from t_info where info_id=?";
					pStatement = connection.prepareStatement(sql);
					pStatement.setInt(1, infoid);
					System.out.println("查询单个资讯---" + infoid);
					System.out.println("SQL------"+sql);
					// 执行并返回结果集
					rSet = pStatement.executeQuery();
					
					
					// 遍历结果集
					if (rSet.next()) {
					
						
						String info_title = rSet.getString("info_title");
						String info_txt = rSet.getString("info_txt");
						String info_tag = rSet.getString("info_tag");
						String info_pic = rSet.getString("info_pic");
						String info_url = rSet.getString("info_url");
						SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); 
						/*String info_date = sdf.format(rSet.getDate("info_date")) +" "+rSet.getTime("info_date");*/
						String info_date = sdf.format(rSet.getDate("info_date"));
						int info_order = rSet.getInt("info_order");

						System.out.println("info_title***" + info_title + "||||排序---" + info_order);

						// 得到Info对象
						info = new Info(info_title, info_txt, info_tag, info_pic, info_url, info_date,
								info_order);

					}

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DbUtil.closeConn(connection, pStatement, rSet);
				return info;
	}

	@Override
	public Info findinfoByName(String infoname) {
		// TODO Auto-generated method stub
		return null;
	}

}
