package com.trav.cms.msg.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.msg.dao.MsgOperator;

/**
 * Servlet implementation class MsgDel
 */
@WebServlet("/admin/MsgDel")
public class MsgDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MsgOperator msgOperator = new MsgOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MsgDel() {
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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		int msgid=Integer.parseInt(request.getParameter("msgid"));
		
		if (msgOperator.delMsg(msgid)) {
			System.out.println("删除成功！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('删除留言成功!');");// js语句：输出alert语句
			out.println("history.back();");// js语句：输出网页回退语句
			out.println("</script>");// 输出script结尾标签
		}

		else{
			System.out.println("删除失败！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('删除留言失败!');");// js语句：输出alert语句
			out.println("history.back();");// js语句：输出网页回退语句
			out.println("</script>");// 输出script结尾标签
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
