package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;
import com.pojo.User;

public class Register extends HttpServlet {
	private UserDAO dao=new UserDAO();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String method=request.getParameter("method");
		if("add".equals(method)){
			doAddUser(request,response);
		}
		
	}

	private void doAddUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int log=dao.AddbyUsername(username, password);
		if (log == 0) {
			response.sendRedirect("register.jsp");
			return;
		}
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
