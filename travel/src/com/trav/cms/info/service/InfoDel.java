package com.trav.cms.info.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.info.dao.InfoOperator;

/**
 * Servlet implementation class InfoDel
 */
@WebServlet("/admin/InfoDel")
public class InfoDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InfoOperator infoOperator = new InfoOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InfoDel() {
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

		//删除资讯的ID
		int infoid = Integer.parseInt(request.getParameter("infoid"));
		
		//删除的文件名称
		String infopic=request.getParameter("infopic");
		System.out.println("/admin/InfoDel:" + infoid);
		if (infoOperator.delInfo(infoid)) {
			//获取要删除的图片或者文件的绝对路径
			File file = new File(request.getServletContext().getRealPath(getServletInfo())+"/"+infopic);	 
			//路径和文件名称
			System.out.println(file.getPath());
			System.out.println(file.getName());
			//如果文件存在
			if (file.exists()) {
				file.delete();
				System.out.println("删除成功");
				out.flush();// 清空缓存
				out.println("<script>");// 输出script标签
				out.println("alert('删除成功!');");// js语句：输出alert语句
				out.println("history.back();");// js语句：输出网页回退语句
				out.println("</script>");// 输出script结尾标签
			}
			else {				 
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
