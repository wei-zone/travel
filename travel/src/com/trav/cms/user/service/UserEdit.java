package com.trav.cms.user.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.user.dao.UserOperator;
import com.trav.cms.user.domain.User;

/**
 * Servlet implementation class UserEdit
 */
@WebServlet("/admin/UserEdit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserOperator userOperator=new UserOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEdit() {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		int user_id = Integer.parseInt(request.getParameter("userid"));
		String username = null;
		String email = null;
	 
		String register_ip = null;
		String gender = null;
		
		
		username = request.getParameter("username");
		email = request.getParameter("email");
		register_ip = getIpAddress(request);
		gender = request.getParameter("gender");
		System.out.println("IpAddr" + register_ip);
		
		User user=new User(user_id, username, email, register_ip, gender);
	 
		if (userOperator.editUser(user)) {
			System.out.println("编辑成功！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('编辑成功!');");// js语句：输出alert语句
			out.println("history.back();");// js语句：输出网页回退语句
			out.println("</script>");// 输出script结尾标签
		}
		else{
			System.out.println("编辑失败！");
			out.flush();// 清空缓存
			out.println("<script>");// 输出script标签
			out.println("alert('编辑失败!');");// js语句：输出alert语句
			out.println("history.back();");// js语句：输出网页回退语句
			out.println("</script>");// 输出script结尾标签
		}
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
