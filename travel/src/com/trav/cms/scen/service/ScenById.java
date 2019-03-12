package com.trav.cms.scen.service;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class ScenById
 * 根据ID来加载景点信息
 * @author admin
 * @date 2017/4/18
 */
@WebServlet("/admin/ScenById")
public class ScenById extends HttpServlet {
	private static final long serialVersionUID = 1L;
     ScenOperator scenOperator=new ScenOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScenById() {
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
		int scenid=Integer.parseInt(request.getParameter("scenid"));
		PrintWriter out=response.getWriter();
		
		//查到的景点对象
		Scen scen = scenOperator.findScenById(scenid);

		//JSON数组
		JSONArray scenJson = new JSONArray();
		//JSON对象
		JSONObject json=new JSONObject();
		
		//将scen对象的信息加入JSON对象
		if (scen!=null) {
			json.put("scenname", scen.getScenname());
			json.put("scenintro", scen.getScenintro());
			json.put("scenlevel",scen.getScenlevel());
			json.put("scentitle", scen.getScentitle());
			json.put("scenfeature", scen.getScenfeature());
			json.put("scentraff", scen.getScentraff());
			json.put("scenmap", scen.getScenmap());
			json.put("scenadd", scen.getScenadd());
			json.put("scenurl", scen.getScenurl());
			json.put("scennameen", scen.getScennameen());
			json.put("scenorder", scen.getScenorder());
			json.put("scenpic", scen.getPicpath());
		 
			//Json数组
			scenJson.add(json);
		}
		
		out.print(scenJson);
		
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
