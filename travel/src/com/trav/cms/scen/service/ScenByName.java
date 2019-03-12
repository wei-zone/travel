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
 * Servlet implementation class ScenByName
 * 根据景点名来查找景点
 * @author admin
 * @date 2017/4/18
 */
@WebServlet("/admin/ScenByName")
public class ScenByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ScenOperator scenOperator=new ScenOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScenByName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		 
		//Ajax发送Url乱码解决的问题
		String scenname=new String((request.getParameter("scenname")).getBytes("iso-8859-1"),"UTF-8");
		
		PrintWriter out=response.getWriter();
		
		System.out.println("ScenByName----"+scenname);
		
		//JSON数组
		JSONArray scenJson = new JSONArray();
	
		try {
			//得到模糊查询的结果集
			List<Scen> list = scenOperator.findScenByName(scenname);

			//遍历该集合
			for (int i = 0; i < list.size(); i++) {
				// Json对象	
				JSONObject json=new JSONObject();

				// 查询结果集
				Scen scen = list.get(i);
				//讲遍历对象的值分别放进json对象
				json.put("scenid", scen.getScenid());
				json.put("scenname", scen.getScenname());
				json.put("scenlevel",scen.getScenlevel());
				json.put("scentitle", scen.getScentitle());
				json.put("scenadd", scen.getScenadd());
				json.put("scenurl", scen.getScenurl());
				json.put("scenpic", scen.getPicpath());
				json.put("scenfeature", scen.getScenfeature());
				// 将Json对象放入数组
				scenJson.add(json);
			}

			// 将json数组传到页面
			out.print(scenJson);
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
