package com.trav.cms.info.service;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class InfoBuId
 */
@WebServlet("/admin/InfoById")
public class InfoById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       InfoOperator infoOperator=new InfoOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoById() {
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
		int infoid=Integer.parseInt(request.getParameter("infoid"));
		PrintWriter out=response.getWriter();
		
		
		Info info = infoOperator.findinfoById(infoid);

		JSONArray infoJson = new JSONArray();
		
		JSONObject json=new JSONObject();
		
		if (info!=null) {
			json.put("info_id", info.getInfo_id());
			json.put("info_title", info.getInfo_title());
			json.put("info_txt", info.getInfo_txt());
			json.put("info_tag", info.getInfo_tag());
			json.put("info_pic", info.getInfo_pic());
			json.put("info_url", info.getInfo_url());
			json.put("info_date", info.getInfo_date());
			json.put("info_order", info.getInfo_order());
			// 将Json对象放入数组
			infoJson.add(json);
		}
		
		out.print(infoJson);
		
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
