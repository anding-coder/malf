<%@page import="com.dao.GoodsDAO"%>
<%@page import="com.pojo.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	GoodsDAO dao = new GoodsDAO();
	int tid = Integer.parseInt(request.getParameter("tid"));
	List<Goods> goods1 = dao.findSameType(tid);
	request.setAttribute("list", goods1);
%>
<html>
<head>
<style type="text/css">
#huanyipi{
background-color: #ff0036;
border: 1px solid #ff0036;
color: #fff;
margin-right: 0;
float: left;
overflow: hidden;
position: relative;
width: 178px;
font-family: 'Microsoft Yahei';
height: 38px;
line-height: 38px;
text-align: center;
font-size: 16px;
margin-top:10px;
text-decoration: none;
}

a:hover{
  text-decoration: underline;
  color: #ff0036;
}
</style>
</head>
  <body>
    	<!-- 相同类型物品 看了又看 -->   
     <div style="width: 200px; float: left; border: 1px solid yellow; margin-top: 20px;" >
         <div class="ald-hd " style="text-align: center;">  
	         <span style=" font-size:12px; color: #999; background-color: #fff;">看了又看</span>
          </div>
          <div style="width: 175px; margin: 0 auto;">
              <c:forEach items="${list }" var="goods">
                 <div class="klykimg" style="  margin-left: 20px;">
                  <a  href="goods.do?method=findbyid&goodsid=${goods.goodsid }" target="_black" >
                    <img  style="margin-top:12px; width:140px; height: 140px; text-align: center;border: 1px solid red; " src="${pageContext.request.contextPath}/shopimage/${goods.goodspic}">
                  </a>
                   <span style="font-size:12px;background-color: #4c4c4c;color: #d1d1d1;width:140px; float: left; text-align: center; ">价格：${goods.goodsprice }</span>
                   <a id="klykimg" style="text-align: center; width:140px;float:left; white-space: nowrap;color: #ff0036; font-weight:900; font-size: 12px; text-decoration: none; " href="goods.do?method=findbyid&goodsid=${goods.goodsid }" target="_black">${goods.goodsname }</a>
                 </div>
              </c:forEach>
              <a id="huanyipi" href="huan.jsp?tid=<%=tid%>">换一批看看</a>
          </div>
     </div> 
  </body>
</html>
