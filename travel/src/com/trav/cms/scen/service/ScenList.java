package com.trav.cms.scen.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.scen.dao.ScenOperator;
import com.trav.cms.scen.domain.Scen;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class ScenList
 */
@WebServlet("/admin/ScenList")
public class ScenList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ScenOperator scenOperator = new ScenOperator();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ScenList() {
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
		System.out.println("*--------------------------------------------------*");
		System.out.println("*---景点图----ScenList");

		int offset = Integer.parseInt(request.getParameter("offset"));
		int size = Integer.parseInt(request.getParameter("size"));
		
		System.out.println("offset--"+offset+",size---"+size);
		// Json数组
		JSONArray scenMore = new JSONArray();
		try {
			List<Scen> list = scenOperator.listMore(offset, size);

			for (int i = 0; i < list.size(); i++) {
				// Json对象
				JSONObject json = new JSONObject();
				// 查询结果集
				Scen scen = list.get(i);
				json.put("scenid", scen.getScenid());
				json.put("scenname", scen.getScenname());
				json.put("scenlevel",scen.getScenlevel());
				json.put("scentitle", scen.getScentitle());
				json.put("scenadd", scen.getScenadd());
				json.put("scenurl", scen.getScenurl());
				json.put("scenpic", scen.getPicpath());
				json.put("scenfeature", scen.getScenfeature());
				// 将Json对象放入数组
				scenMore.add(json);
			}

			// 传到页面
			out.print(scenMore);
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
