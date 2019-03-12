package com.trav.cms.user.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.user.dao.UserOperator;
 

/**
 * Servlet implementation class UserPwdEdit
 */
@WebServlet("/admin/UserPwdEdit")
public class UserPwdEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserOperator userOperator = new UserOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserPwdEdit() {
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
		PrintWriter out = response.getWriter();

		int user_id = Integer.parseInt(request.getParameter("userid"));
		String newpwd = request.getParameter("newpassword");
		if (userOperator.editPwd(user_id, newpwd)) {
			System.out.println("密码修改成功！");
			 out.flush();//清空缓存
	         out.println("<script>");//输出script标签
	         out.println("alert('密码修改成功！');");//js语句：输出alert语句
	         out.println("history.back();");//js语句：输出网页回退语句
	         out.println("</script>");//输出script结尾标签
		}
		else{
			System.out.println("密码修改成功！");
			out.print("falied");
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
