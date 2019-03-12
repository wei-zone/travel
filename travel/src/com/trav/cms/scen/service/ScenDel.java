package com.trav.cms.scen.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.scen.dao.ScenOperator;

/**
 * Servlet implementation class ScenDel
 * 删除景点
 * @author admin
 * @date 2017/4/18
 */
@WebServlet("/admin/ScenDel")
public class ScenDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
      ScenOperator scenOperator=new ScenOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScenDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		//获取要删除的景点ID
		int scenid=Integer.parseInt(request.getParameter("scenid"));
		//景点图片
		String scenpic=request.getParameter("scenpic");
		System.out.println("/admin/ScenDel");
		
		if (scenOperator.delScen(scenid)) {		
			//获取要删除的图片或者文件的绝对路径
			File file = new File(request.getServletContext().getRealPath(getServletInfo())+"/"+scenpic);	 
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
