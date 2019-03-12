package com.trav.cms.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.trav.cms.user.domain.User;
import com.trav.cms.util.DbUtil;

public class UserOperator implements UserOper {

	@Override
	public List<User> listAll() {
		// TODO Auto-generated method stub
		 
		Connection connection = null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		List<User> list=new ArrayList<User>();
		try {
			// 创建连接
			connection=DbUtil.getConn();
			
			// SQL语句
			String sql="select * from t_user";
			System.out.println("查询所有用户---："+sql);
			
			preparedStatement=connection.prepareStatement(sql);
	 
			
			// 执行SQL语句
			resultSet=preparedStatement.executeQuery();
			
			while (resultSet.next()) {
	 
				 int  user_id=resultSet.getInt("user_id");
				 String username=resultSet.getString("username");
				 String password=resultSet.getString("password");
				 String email=resultSet.getString("email");
				 String register_time=resultSet.getString("register_time");
				 String register_ip=resultSet.getString("register_ip");
				 int group_id=resultSet.getInt("group_id");
				 String gender=resultSet.getString("gender");
				 String user_pic=resultSet.getString("user_pic");	
				 
				 // 返回找到的数据
				 User user=new User(user_id,username, password, email, register_time, register_ip, group_id, gender, user_pic);				 
				 list.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			DbUtil.closeConn(connection, preparedStatement, resultSet);
		}
		return list;
	}

	

	@Override
	public User findUserByName(String user_name) {
		// TODO Auto-generated method stub
		User user=null;
		Connection connection = null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		
		try {
			// 创建连接
			connection=DbUtil.getConn();
			
			// SQL语句
			String sql="select * from t_user where username=?";
			System.out.println("查询用户："+sql);
			
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, user_name);
			
			// 执行SQL语句
			resultSet=preparedStatement.executeQuery();
			
			if (resultSet.next()) {
				 System.out.println("^--^成功找到");
				 int  user_id=resultSet.getInt("user_id");
				 String username=resultSet.getString("username");
				 String password=resultSet.getString("password");
				 String email=resultSet.getString("email");
				 String register_time=resultSet.getString("register_time");
				 String register_ip=resultSet.getString("register_ip");
				 int group_id=resultSet.getInt("group_id");
				 String gender=resultSet.getString("gender");
				 String user_pic=resultSet.getString("user_pic");	
				 
				 // 返回找到的数据
				 user=new User(user_id,username, password, email, register_time, register_ip, group_id, gender, user_pic);				 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			DbUtil.closeConn(connection, preparedStatement, resultSet);
		}
		return user;
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isAdd = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "insert into t_user (username,email,password,register_ip,gender,register_time)"
					+ "values(?,?,?,?,?,now())";
			pStatement = connection.prepareStatement(sql);
			System.out.println("新增管理员*****" + sql);
			System.out.println();

			pStatement.setString(1, user.getUsername());
			pStatement.setString(2, user.getEmail());
			pStatement.setString(3, user.getPassword());
			pStatement.setString(4, user.getRegister_ip());
			pStatement.setString(5, user.getGender());
			 

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
	public boolean delUser(int user_id) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isDel = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "delete from t_user where user_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("删除用户------" + user_id);
			System.out.println("SQL----------" + sql);
			System.out.println();

			pStatement.setInt(1, user_id);

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
	public boolean editUser(User user) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement pStatement = null;
		boolean isEdit = false;
		int count = 0;

		try {
			connection = DbUtil.getConn();

			String sql = "update t_user set username=?,email=?,gender=?,register_ip=? where user_id=?";
			pStatement = connection.prepareStatement(sql);
			System.out.println("编辑用户信息---" + user.getUser_id());
			System.out.println("  SQL  ---" + sql);
			System.out.println();

			pStatement.setString(1, user.getUsername());
			pStatement.setString(2, user.getEmail());
			pStatement.setString(3, user.getGender());
			pStatement.setString(4, user.getRegister_ip());
			pStatement.setInt(5, user.getUser_id());

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
	public User findUserById(int user_id) {
		// TODO Auto-generated method stub
		User user=null;
		Connection connection = null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		
		try {
			// 创建连接
			connection=DbUtil.getConn();
			
			// SQL语句
			String sql="select * from t_user where user_id=?";
			System.out.println("查询用户："+sql);
			
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, user_id);
			
			// 执行SQL语句
			resultSet=preparedStatement.executeQuery();
			
			if (resultSet.next()) {
				 System.out.println("^--^成功找到");
				 
				 String username=resultSet.getString("username");
				 String password=resultSet.getString("password");
				 String email=resultSet.getString("email");
				 
				 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
				 String register_time=sdf.format(resultSet.getDate("register_time"));
				 
				 String register_ip=resultSet.getString("register_ip");
				 int group_id=resultSet.getInt("group_id");
				 String gender=resultSet.getString("gender");
				 String user_pic=resultSet.getString("user_pic");	
				 
				 // 返回找到的数据
				 user=new User(username, password, email, register_time, register_ip, group_id, gender, user_pic);				 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			DbUtil.closeConn(connection, preparedStatement, resultSet);
		}
		return user;
	}



 
	@Override
	public List<User> listMore(int offset, int size) {
		// TODO Auto-generated method stub
		 
		Connection connection = null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		List<User> list=new ArrayList<User>();
		try {
			// 创建连接
			connection=DbUtil.getConn();
			
			// SQL语句
			String sql="select * from t_user limit ?,?";
			System.out.println("查询所有用户---："+sql);
			
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, offset);
			preparedStatement.setInt(2, size);
			
			// 执行SQL语句
			resultSet=preparedStatement.executeQuery();
			
			while (resultSet.next()) {
	 
				 int  user_id=resultSet.getInt("user_id");
				 String username=resultSet.getString("username");
				 //String password=resultSet.getString("password");
				 String email=resultSet.getString("email");
				 //注册时间
				 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
				 String register_time=sdf.format(resultSet.getDate("register_time"));
				 
				 String register_ip=resultSet.getString("register_ip");
				 System.out.println(register_ip);
				 //int group_id=resultSet.getInt("group_id");
				 String gender=resultSet.getString("gender");
				 //String user_pic=resultSet.getString("user_pic");	
				 
				 // 返回找到的数据
				 User user=new User(user_id, username, email, register_time, register_ip, gender);		 
				 list.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			DbUtil.closeConn(connection, preparedStatement, resultSet);
		}
		return list;
	}


	//修改密码
	@Override
	public boolean editPwd(int user_id, String password) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Connection connection = null;
				PreparedStatement pStatement = null;
				boolean isEdit = false;
				int count = 0;
				try {
					connection = DbUtil.getConn();
					String sql = "update t_user set password=?  where user_id=?";
					pStatement = connection.prepareStatement(sql);
					System.out.println("密码修改---" + user_id);
					System.out.println("  SQL  ---" + sql);
					System.out.println();

					pStatement.setString(1, password);
					pStatement.setInt(2, user_id);

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
}
