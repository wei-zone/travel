package com.trav.cms.user.service;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class UserById
 */
@WebServlet("/admin/UserById")
public class UserById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserOperator userOperator=new UserOperator();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserById() {
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

		int userid = Integer.parseInt(request.getParameter("userid"));
		 
		User user = null;
		PrintWriter out=response.getWriter();
		
		user = userOperator.findUserById(userid);
		if (user != null) {
				
				System.out.println("^--^查找成功！");

				System.out.println("用户名：" + user.getUsername());

				JSONArray userJson = new JSONArray();
				
				JSONObject json=new JSONObject();
	 
					json.put("username", user.getUsername());
					json.put("password", user.getPassword());
					json.put("email",user.getEmail());
					json.put("gender", user.getGender());
				 
					userJson.add(json);
			 
					out.print(userJson);

		}

		else {
			System.out.println("-*-*-查找失败！用户不存在");
			out.print("用户不存在！");
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
