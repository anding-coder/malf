<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list }" var="goods">
	${goods.goodsid }${goods.goodsname }<br>
</c:forEach>

