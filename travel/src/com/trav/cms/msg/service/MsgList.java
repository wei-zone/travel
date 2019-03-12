package com.trav.cms.msg.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.msg.dao.MsgOperator;
import com.trav.cms.msg.domain.Msg;
 

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class MsgList
 */
@WebServlet("/admin/MsgList")
public class MsgList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MsgOperator msgOperator=new MsgOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgList() {
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
		PrintWriter out = response.getWriter();
		System.out.println("---留言列表----MsgList");

		int offset = Integer.parseInt(request.getParameter("offset"));
		int size = Integer.parseInt(request.getParameter("size"));
		
		System.out.println("offset--"+offset+",size---"+size);
		// Json数组
		JSONArray msgMore = new JSONArray();

		try {
			List<Msg> list = msgOperator.listMore(offset, size);

			for (int i = 0; i < list.size(); i++) {
				// Json对象
				JSONObject json = new JSONObject();

				// 查询结果集
				Msg msg = list.get(i);

				json.put("msgid", msg.getMsg_id());
				json.put("author", msg.getAuthor());
				json.put("content",msg.getMsg_text());
				json.put("email", msg.getEmail());
				json.put("datetime", msg.getMsg_time());
				json.put("msgip", msg.getMsg_ip());
			 
				// 将Json对象放入数组
				msgMore.add(json);
			}

			// 传到页面
			out.print(msgMore);
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
