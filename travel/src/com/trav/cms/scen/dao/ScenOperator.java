package com.trav.cms.scen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trav.cms.scen.domain.Scen;
import com.trav.cms.util.DbUtil;

public class ScenOperator implements ScenOper {

	@Override
	public List<Scen> listAll() {
		// TODO Auto-generated method stub

		// 必要的变量
		Connection connection = null;
		List<Scen> list = new ArrayList<Scen>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;

		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_scen order by scen_order desc";
			pStatement = connection.prepareStatement(sql);
			System.out.println("查询所有景点*****" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			while (rSet.next()) {
				int scenid = rSet.getInt("scen_id");
				String scenname = rSet.getString("scen_name");
				String scenintro = rSet.getString("scen_intro");
				String scenlevel = rSet.getString("scen_level");
				String scentitle = rSet.getString("scen_title");
				String scenfeature = rSet.getString("scen_feature");
				String scentraff = rSet.getString("scen_traff");
				String scenmap = rSet.getString("scen_map");
				String picpath = rSet.getString("pic_path");
				String scenadd = rSet.getString("scen_add");
				String scennameen = rSet.getString("scen_name_en");
				String scenurl = rSet.getString("scen_url");
				int scenorder = rSet.getInt("scen_order");

				System.out.println("ID***" + scenid + "||||排序---" + scenorder);

				// 得到scen对象
				Scen scen = new Scen(scenid, scenname, scenintro, scenlevel, scentitle, scenfeature, scentraff, scenmap,
						picpath, scenadd, scennameen, scenorder, scenurl);

				// 追加到list集合
				list.add(scen);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbUtil.closeConn(connection, pStatement, rSet);
		return list;

	}

	/*
	 * 加载更多
	 */
	public List<Scen> listMore(int offset, int size) {

		// 必要的变量
		Connection connection = null;
		List<Scen> list = new ArrayList<Scen>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;
		try {
			// 创建连接
			connection = DbUtil.getConn();
			// 创建SQL语句
			String sql = "select * from t_scen order by scen_order desc limit ?,?";
			pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, offset);
			pStatement.setInt(2, size);

			System.out.println(sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();
			// 遍历结果集
			while (rSet.next()) {
				int scenid = rSet.getInt("scen_id");
				String scenname = rSet.getString("scen_name");
				String scenintro = rSet.getString("scen_intro");
				String scenlevel = rSet.getString("scen_level");
				String scentitle = rSet.getString("scen_title");
				String scenfeature = rSet.getString("scen_feature");
				String scentraff = rSet.getString("scen_traff");
				String scenmap = rSet.getString("scen_map");
				String picpath = rSet.getString("pic_path");
				String scenadd = rSet.getString("scen_add");
				String scennameen = rSet.getString("scen_name_en");
				String scenurl = rSet.getString("scen_url");
				int scenorder = rSet.getInt("scen_order");
				System.out.println("ID--- " + scenid + " *|*排序--- " + scenorder);
				// 得到scen对象
				Scen scen = new Scen(scenid, scenname, scenintro, scenlevel, scentitle, scenfeature, scentraff, scenmap,
						picpath, scenadd, scennameen, scenorder, scenurl);

				// 追加到list集合
				list.add(scen);
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
	public boolean addScen(Scen scen) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isAdd = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "insert into t_scen (scen_name,scen_intro,scen_level,scen_title,scen_feature,scen_traff,scen_map,pic_path,scen_add,scen_name_en,scen_order,scen_url) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pStatement = connection.prepareStatement(sql);
			System.out.println("插入景点*****" + sql);
			System.out.println();

			pStatement.setString(1, scen.getScenname());
			pStatement.setString(2, scen.getScenintro());
			pStatement.setString(3, scen.getScenlevel());
			pStatement.setString(4, scen.getScentitle());
			pStatement.setString(5, scen.getScenfeature());
			pStatement.setString(6, scen.getScentraff());
			pStatement.setString(7, scen.getScenmap());
			pStatement.setString(8, scen.getPicpath());
			pStatement.setString(9, scen.getScenadd());
			pStatement.setString(10, scen.getScennameen());
			pStatement.setInt(11, scen.getScenorder());
			pStatement.setString(12, scen.getScenurl());

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
	public boolean delScen(int scenid) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isDel = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "delete from t_scen where scen_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("删除景点------" + scenid);
			System.out.println("SQL----------" + sql);
			System.out.println();

			pStatement.setInt(1, scenid);

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
	public boolean editScen(Scen scen) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isEdit = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "update t_scen set scen_name=?,scen_intro=?,scen_level=?,scen_title=?,scen_feature=?,"
					+ "scen_traff=?,scen_map=?,pic_path=?,scen_add=?,scen_name_en=?,scen_order=?,scen_url=? "
					+ "where scen_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("编辑景点---" + scen.getScenid());
			System.out.println("  SQL  ---" + sql);
			System.out.println();

			pStatement.setString(1, scen.getScenname());
			pStatement.setString(2, scen.getScenintro());
			pStatement.setString(3, scen.getScenlevel());
			pStatement.setString(4, scen.getScentitle());
			pStatement.setString(5, scen.getScenfeature());
			pStatement.setString(6, scen.getScentraff());
			pStatement.setString(7, scen.getScenmap());
			pStatement.setString(8, scen.getPicpath());
			pStatement.setString(9, scen.getScenadd());
			pStatement.setString(10, scen.getScennameen());
			pStatement.setInt(11, scen.getScenorder());
			pStatement.setString(12, scen.getScenurl());
			pStatement.setInt(13, scen.getScenid());

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

	// 模糊查询
	@Override
	public List<Scen> findScenByName(String scenname) {
		// TODO Auto-generated method stub
		// 必要的变量
		Connection connection = null;
		List<Scen> list = new ArrayList<Scen>();
		ResultSet rSet = null;
		PreparedStatement pStatement = null;
		 
		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_scen where scen_name like ?";
			pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, "%"+scenname+"%");
			System.out.println("查询景点---" + scenname);
			System.out.println("SQL------" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			while (rSet.next()) {
					
				int scenid = rSet.getInt("scen_id");
				String scen_name = rSet.getString("scen_name");
				String scenintro = rSet.getString("scen_intro");
				String scenlevel = rSet.getString("scen_level");
				String scentitle = rSet.getString("scen_title");
				String scenfeature = rSet.getString("scen_feature");
				String scentraff = rSet.getString("scen_traff");
				String scenmap = rSet.getString("scen_map");
				String picpath = rSet.getString("pic_path");
				String scenadd = rSet.getString("scen_add");
				String scennameen = rSet.getString("scen_name_en");
				String scenurl = rSet.getString("scen_url");
				int scenorder = rSet.getInt("scen_order");

				System.out.println("scen_name"+scen_name);
				// 得到scen对象
				Scen scen = new Scen(scenid, scen_name, scenintro, scenlevel, scentitle, scenfeature, scentraff, scenmap, picpath,
						scenadd, scennameen, scenorder, scenurl);
				list.add(scen);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbUtil.closeConn(connection, pStatement, rSet);
		return list;
	}

	@Override
	public Scen findScenById(int scenid) {
		// TODO Auto-generated method stub
		// 必要的变量
		Connection connection = null;

		ResultSet rSet = null;
		PreparedStatement pStatement = null;
		Scen scen = null;// 返回的scen
		try {
			// 创建连接
			connection = DbUtil.getConn();

			// 创建SQL语句
			String sql = "select * from t_scen where scen_id=?";
			pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, scenid);
			System.out.println("查询景点---" + scenid);
			System.out.println("SQL------" + sql);
			// 执行并返回结果集
			rSet = pStatement.executeQuery();

			// 遍历结果集
			if (rSet.next()) {

				String scenname = rSet.getString("scen_name");
				String scenintro = rSet.getString("scen_intro");
				String scenlevel = rSet.getString("scen_level");
				String scentitle = rSet.getString("scen_title");
				String scenfeature = rSet.getString("scen_feature");
				String scentraff = rSet.getString("scen_traff");
				String scenmap = rSet.getString("scen_map");
				String picpath = rSet.getString("pic_path");
				String scenadd = rSet.getString("scen_add");
				String scennameen = rSet.getString("scen_name_en");
				String scenurl = rSet.getString("scen_url");
				int scenorder = rSet.getInt("scen_order");

				// 得到scen对象
				scen = new Scen(scenname, scenintro, scenlevel, scentitle, scenfeature, scentraff, scenmap, picpath,
						scenadd, scennameen, scenorder, scenurl);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbUtil.closeConn(connection, pStatement, rSet);
		return scen;
	}

}
