package com.trav.cms.user.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trav.cms.user.dao.UserOperator;
import com.trav.cms.user.domain.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class UserList
 */
@WebServlet("/admin/UserList")
public class UserList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserOperator userOperator=new UserOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserList() {
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
		System.out.println("---用户列表----userList");

		int offset = Integer.parseInt(request.getParameter("offset"));
		int size = Integer.parseInt(request.getParameter("size"));
		
		System.out.println("offset--"+offset+",size---"+size);
		// Json数组
		JSONArray userMore = new JSONArray();

		try {
			List<User> list = userOperator.listMore(offset, size);

			for (int i = 0; i < list.size(); i++) {
				// Json对象
				JSONObject json = new JSONObject();

				// 查询结果集
				User user = list.get(i);
 
				json.put("userid", user.getUser_id());
				json.put("username", user.getUsername());
				json.put("email", user.getEmail());
				json.put("gender", user.getGender());
				json.put("register_time",user.getRegister_time());
				json.put("register_ip", user.getRegister_ip());
				
				System.out.println("/admin/UserList"+user.getRegister_ip());
			 
				// 将Json对象放入数组
				userMore.add(json);
			}

			// 传到页面
			out.print(userMore);
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
