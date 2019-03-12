package com.trav.cms.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.trav.cms.user.dao.UserOperator;
import com.trav.cms.user.domain.User;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/admin/Login")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserOperator userOperator = new UserOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = null;
		
		user = userOperator.findUserByName(username);
		if (user != null) {
			if (password.equals(user.getPassword())) {			
				System.out.println("^--^登录成功！");
				System.out.println("用户名：" + username+",密    码：" + password);
				// Session
				HttpSession session = request.getSession();				
				//数组信息
				String[] userinfo={username,Integer.toString(user.getUser_id())};			
				// 绑定数据
				session.setAttribute("userinfo", userinfo);
				//session.setAttribute("userid", user.getUser_id());
				// 设置失效时间 5分钟
				session.setMaxInactiveInterval(300);
				// 做转发
				request.setAttribute("user", user);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}

			else {
				System.out.println("-*-*-登录失败！密码不正确!");
				System.out.println("用户名：" + username);
				System.out.println("密    码：" + password);
				 //response.sendRedirect("login.jsp");
				 out.flush();//清空缓存
		         out.println("<script>");//输出script标签
		         out.println("alert('-*-*-登录失败！密码不正确！');");//js语句：输出alert语句
		         out.println("history.back();");//js语句：输出网页回退语句
		         out.println("</script>");//输出script结尾标签

			}
		}

		else {
			System.out.println("-*-*-登录失败！用户名不存在!");
			System.out.println("用户名：" + username);
			System.out.println("密    码：" + password);
			 //response.sendRedirect("login.jsp");
			 out.flush();//清空缓存
	         out.println("<script>");//输出script标签
	         out.println("alert('-*-*-登录失败！用户名不存在!');");//js语句：输出alert语句
	         out.println("history.back();");//js语句：输出网页回退语句
	         out.println("</script>");//输出script结尾标签
			// 做重定向到登录页面
			//response.sendRedirect("login.jsp");
		}
		out.close();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
