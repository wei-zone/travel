package com.trav.cms.banner.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.banner.dao.BanOperator;

/**
 * Servlet implementation class BannerDel 
 * 根据Id删除轮播图片
 * @author admin
 * @date 2017/4/15
 */
@WebServlet("/admin/BannerDel")
public class BannerDel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BanOperator banOperator = new BanOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BannerDel() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		// 获取要删除的ID
		int banid = Integer.parseInt(request.getParameter("banid"));
		// 删除的文件的路径
		String banpath = request.getParameter("banpath");

		System.out.println("删除轮播图" + banid);
		if (banOperator.delBan(banid)) {
			// 获取要删除的图片或者文件的绝对路径
			File file = new File(request.getServletContext().getRealPath(getServletInfo()) + "/" + banpath);
			// 路径和文件名称
			System.out.println(file.getPath());
			System.out.println(file.getName());
			// 如果文件存在
			if (file.exists()) {
				file.delete();
				System.out.println("删除成功");
				out.flush();// 清空缓存
				out.println("<script>");// 输出script标签
				out.println("alert('删除成功!');");// js语句：输出alert语句
				out.println("history.back();");// js语句：输出网页回退语句
				out.println("</script>");// 输出script结尾标签
			} else {
				System.out.println("删除失败，文件不存在！");
				out.flush();// 清空缓存
				out.println("<script>");// 输出script标签
				out.println("alert('删除失败，文件不存在！');");// js语句：输出alert语句
				out.println("history.back();");// js语句：输出网页回退语句
				out.println("</script>");// 输出script结尾标签
			}
		}
		out.close();
	}

}
