<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table>
	<tr>
		<th>编号</th>
		<th>图片</th>
		<th>数量</th>
		<th>操作</th>
	</tr>
	<tbody id="t">
		<c:forEach items="${map }" var="map">
			<tr>
				<td>${map.key.goodsid }</td>
				<td>${map.key.goodspic }</td>
				<td>
				    <input type="button" value="-" onclick="change(this,${map.key.goodsid} ,'-')">
					<input type="text" id="num${map.key.goodsid }" value="${map.value }" style="width: 40px">
					<input type="button" value="+"onclick="change(this,${map.key.goodsid} ,'+')">
				</td>
				<td>
				    <a href="goods.do?method=delfromcar&goodsid=${map.key.goodsid }">删除</a>
				</td>
			</tr>
		</c:forEach>
	<tbody>
</table>

<script>
	function change(a, goodsid, op) {
		var num = document.getElementById("num" + goodsid).value;

		if (op == '+') {
			document.getElementById("num" + goodsid).value = num * 1 + 1;
		}

		else {
			if (num == 1) {
				if (confirm("真的不要该商品吗?")) {
					document.getElementById("t").removeChild(
							a.parentNode.parentNode);
					return;
				} else {
					return;
				}
			}
			document.getElementById("num" + goodsid).value = num - 1;
		}
	}
</script>









