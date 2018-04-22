package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.pojo.User;

public class PasswordRetrieval extends HttpServlet {

	private UserDAO dao=new UserDAO();
	protected void service(HttpServletRequest request ,HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("method");
		if("findbyusername".equals(method))
		{
			doFindusername(request,response);
		}
	}

	private void doFindusername(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String username=request.getParameter("username");
		String qwe=(String) request.getSession().getAttribute("result");
		System.out.println(qwe);
		User log=dao.pasback(username);
		if(log!=null&&"true".equals(qwe)){
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
		response.sendRedirect("mimazh/mimazhaohui.jsp");
		
}

}
