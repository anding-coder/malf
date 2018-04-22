package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GoodsDAO;
import com.dao.UserDAO;
import com.pojo.Collection;
import com.pojo.Goods;
import com.pojo.User;
import com.pojo.UserInfo;

public class UserServlet extends HttpServlet {

	private UserDAO dao = new UserDAO();
	private GoodsDAO goodsDAO = new GoodsDAO();

 
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String method = request.getParameter("method");

		if ("showCollection".equals(method)) {
			doShowCollection(request, response);
		}

	}

	// œ‘ æ ’≤ÿ
	private void doShowCollection(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {

		User info = (User) request.getSession().getAttribute("userinfo");
		if (info == null) {
			response.getWriter().print("<script>alert('login before');location='login.jsp'</script>");
			return;
		}
		

		List<Collection> collections = dao.showCollection(info.getUsername());

		List<Goods> list = new ArrayList<Goods>();

		for (Collection collection : collections) {
			Goods goods = goodsDAO.findbyid(collection.getGoodsid()+"");
			list.add(goods);
		}
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("showCollection.jsp").forward(request, response);

	}

}
