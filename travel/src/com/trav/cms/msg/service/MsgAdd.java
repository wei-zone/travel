package com.trav.cms.msg.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.msg.dao.MsgOperator;
import com.trav.cms.msg.domain.Msg;

/**
 * Servlet implementation class MsgAdd
 */
@WebServlet("/MsgAdd")
public class MsgAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MsgOperator msgOperator = new MsgOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MsgAdd() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 获取客户端IP地址
	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
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
		// request.getRemoteAddr();
		System.out.println("*--------------------------------------------------*");
		System.out.println("新增留言：MsgAdd");
		String author = null;
		String msg_text = null;
		String msg_ip = null;
		String email = null;

		author = request.getParameter("author");
		email = request.getParameter("email");
		msg_text = request.getParameter("msg_text");
		msg_ip = getIpAddress(request);
		System.out.println("IpAddr" + msg_ip);

		Msg msg = new Msg(author, msg_text, msg_ip, msg_ip, email);

		if (msgOperator.addMsg(msg)) {
			System.out.println("留言成功！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('留言成功!');");// js语句：输出alert语句
			out.println("history.back();");// js语句：输出网页回退语句
			out.println("</script>");// 输出script结尾标签
		}

		else {
			System.out.println("留言失败！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('留言失败!');");// js语句：输出alert语句
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
