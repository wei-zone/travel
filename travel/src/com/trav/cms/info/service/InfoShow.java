package com.trav.cms.info.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.info.dao.InfoOperator;
import com.trav.cms.info.domain.Info;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class InfoShow
 */
@WebServlet("/admin/InfoShow")
public class InfoShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InfoOperator infoOperator = new InfoOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InfoShow() {
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
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("---资讯----InfoShow");

		int offset = Integer.parseInt(request.getParameter("offset"));
		int size = Integer.parseInt(request.getParameter("size"));

		System.out.println("offset--" + offset + ",size---" + size);
		// Json数组
		JSONArray infoMore = new JSONArray();

		try {
			List<Info> list = infoOperator.listMore(offset, size);

			for (int i = 0; i < list.size(); i++) {
				// Json对象
				JSONObject json = new JSONObject();

				// 查询结果集
				Info info = list.get(i);

				/*
				 * json.put("picname", banner.getBanname());
				 * json.put("pictitle", banner.getBantitle());
				 */
				json.put("info_id", info.getInfo_id());
				json.put("info_title", info.getInfo_title());
				json.put("info_txt", info.getInfo_txt());
				json.put("info_tag", info.getInfo_tag());
				json.put("info_pic", info.getInfo_pic());
				json.put("info_url", info.getInfo_url());
				json.put("info_date", info.getInfo_date());
				System.out.println("InfoShow---:"+info.getInfo_date());
				json.put("info_order", info.getInfo_order());
				// 将Json对象放入数组
				infoMore.add(json);
			}

			// 传到页面
			out.print(infoMore);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
