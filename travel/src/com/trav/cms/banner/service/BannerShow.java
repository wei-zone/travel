package com.trav.cms.banner.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.banner.dao.BanOperator;
import com.trav.cms.banner.domain.Banner;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class BannerShow
 */
@WebServlet("/BannerShow")
public class BannerShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BanOperator banOperator=new BanOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BannerShow() {
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
		System.out.println("*--------------------------------------------------*");
		System.out.println("*--轮播图：BannerShow");
		
		//Json数组
		JSONArray jsonArray=new JSONArray();
		
		try {
			List<Banner> list=banOperator.listAll();
			
			for(int i=0;i<list.size();i++){
				// Json对象
				JSONObject json=new JSONObject();
				
				// 查询结果集
				Banner banner=list.get(i);
				
				/*
				 *json.put("picname", banner.getBanname());
				 *json.put("pictitle", banner.getBantitle());
				 */
				
				json.put("path", banner.getBanpath());
				json.put("url", banner.getBantitle());
				json.put("name", banner.getBanname());
				json.put("scenid", banner.getScenid());
				// 将Json对象放入数组
				jsonArray.add(json);
			}
			
			//传到页面
			out.print(jsonArray);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
