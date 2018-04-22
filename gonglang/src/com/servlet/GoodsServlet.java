package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GoodsDAO;
import com.dao.PersonDAO;
import com.pojo.Collection;
import com.pojo.Goods;
import com.pojo.Person;
import com.pojo.User;
import com.pojo.UserInfo;

public class GoodsServlet extends HttpServlet {

	private GoodsDAO dao = new GoodsDAO();
	private PersonDAO daoper=new PersonDAO();
	
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String method = request.getParameter("method");

		if ("findall".equals(method)) {
			doFindAll(request, response);
		}

		if ("findbyid".equals(method)) {
			doFindById(request, response);
		}

		if ("addCar".equals(method)) {
			doAddCar(request, response);
		}

		if ("delfromcar".equals(method)) {
			doDelFromCar(request, response);
		}

		if ("addCollection".equals(method)) {
			doAddCollection(request, response);
		}
		if("buyshop".equals(method)){
			doBuyShop(request,response);
		}
		if("order".equals(method)){
			doOrder(request,response);
		}

	}
	//提交订单
    private void doOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("hewolf-tmall/order.jsp").forward(request, response);
	}
	//购买商品
	private void doBuyShop(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		 String goodsid=request.getParameter("goodsid");
		 
		 HttpSession session = request.getSession();
			User info = (User) session.getAttribute("userinfo");
			if (info == null) {
				response.getWriter().print("<script>alert('login before');location='login.jsp'</script>");
				return;
			}
			
			Goods goods=dao.findbyid(goodsid);
			request.setAttribute("goods", goods);
			
			String username =  (String) session.getAttribute("username");
			System.out.println(username);
			Person person=daoper.byusenamefindall(username);
			request.setAttribute("person", person);
			request.getRequestDispatcher("buyshop.jsp").forward(request, response);
			
		
	}
    //收藏商品
	private void doAddCollection(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String goodsid = request.getParameter("goodsid");
	
		HttpSession session = request.getSession();
		User info = (User) session.getAttribute("userinfo");
		if (info == null) {
			response.getWriter()
					.print("<script>alert('login before');location='login.jsp'</script>");
			return;
		}

		// 如果用户已经登录了 判断用户是否已经收藏该商品
		Collection collection = dao
				.checkCollection(info.getUsername(), goodsid);

		if (collection != null) {
			response.getWriter().print("<script>alert('collectted');location='goods.do?method=findbyid&goodsid="+goodsid+"'</script>");
			return;
		}

		dao.addCollection(info.getUsername(), goodsid);

		response.sendRedirect("goods.do?method=findbyid&goodsid=" + goodsid);

	}

	private void doDelFromCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String goodsid = request.getParameter("goodsid");
		Goods goods = dao.findbyid(goodsid);
		Map map = (Map) request.getSession().getAttribute("map");
		map.remove(goods);
		response.sendRedirect("showCar.jsp");

	}
    //入购物车
	private void doAddCar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String goodsid = request.getParameter("goodsid");

		
		HttpSession session = request.getSession();
		User info = (User) session.getAttribute("userinfo");
		if (info == null) {
			response.getWriter().print("<script>alert('login before');location='login.jsp'</script>");
			return;
		}else{
		Map<Goods, Integer> map = (Map<Goods, Integer>) session
				.getAttribute("map");

		if (map == null) {
			map = new HashMap<Goods, Integer>();
		}

		Goods goods = dao.findbyid(goodsid);

		// 怎么加入购物车
		Integer n = map.get(goods);
		if (n == null) {
			map.put(goods, num);
		} else {
			map.put(goods, n + num);
		}

		session.setAttribute("map", map);
		response.sendRedirect("showCar.jsp");
		}
	}

	private void doFindById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String goodsid = request.getParameter("goodsid");
		Goods goods = dao.findbyid(goodsid);
		request.setAttribute("goods", goods);
		
		//List<Goods> goods1 = dao.findall();
		List<Goods> goods1 = dao.findSameType(goods.getTid());
		request.setAttribute("list", goods1);
		request.getRequestDispatcher("showDetail.jsp").forward(request,response);
	}

	private void doFindAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Goods> goods = dao.findall();
		request.setAttribute("list", goods);
		request.getRequestDispatcher("hewolf-tmall/view-shop.jsp").forward(request, response);
	}
}
