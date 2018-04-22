package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GoodsDAO;
import com.dao.UserDAO;
import com.pojo.Goods;
import com.pojo.User;

public class LoginServlet extends HttpServlet {
	private UserDAO dao=new UserDAO();
	private GoodsDAO dao2=new GoodsDAO();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	   request.setCharacterEncoding("utf-8");
	   response.setContentType("text/html;charset=utf-8");
		String method=request.getParameter("method");
		if("findall".equals(method)){
			doFindall(request,response);
		}
	}

	private void doFindall(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		User log=dao.login(username, password);
		request.setAttribute("goods", log);
		List<Goods> goods1 = dao2.findall();
		request.setAttribute("list", goods1);
		if (log == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		request.getSession().setAttribute("userinfo", log);
		request.getSession().setAttribute("username", username);
		request.getRequestDispatcher("hewolf-tmall/view-shoplogin.jsp").forward(request, response);
}
}
