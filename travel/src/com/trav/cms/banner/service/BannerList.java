package com.trav.cms.banner.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.banner.dao.BanOperator;
import com.trav.cms.banner.domain.Banner;

/**
 * Servlet implementation class BannerList
 */
@WebServlet("/admin/BannerList")
public class BannerList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BanOperator banOperator=new BanOperator();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BannerList() {
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
		System.out.println("*--------------------------------------------------*");
		System.out.println("*-查询所有轮播图-----/admin/BannerList");
		
		try {
			List<Banner> list=banOperator.listAll();
			
			// 转发
			request.setAttribute("banner",list);			
			request.getRequestDispatcher("banner-list.jsp").forward(request,response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
