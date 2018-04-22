<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
    <title>天猫活动页</title>
    <meta charset="utf-8" />
    <meta name="referrer" content="always">
    <meta name="oversea" content="false" />
    <meta name="world" content="false" />
    <meta name="data-spm" content="a1z10" />
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta name="description" content="淘宝, 店铺, 旺铺, 公狼旗舰店" />
    <meta name="keywords" content="欢迎前来淘宝网公狼旗舰店 旺铺，众多商品任你选购" />
    <meta name="ahot-aplus" content="1">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/2.css">
    <style>
    </style>
</head>

<body>
    <div id="page" class="shop-tmall">

        <!--顶部导航菜单栏-->
        <iframe src="${pageContext.request.contextPath }/hewolf-tmall/top.jsp" scrolling="no" border="0" height="200px" width="100%"
            frameborder="no"></iframe>

        <div style="width: 1050px;margin: 0 auto; border: 1px solid red;">
            <c:forEach items="${list }" var="goods">
                <div style=" width: 320;height: 460;  float: left;margin-left: 20px; margin-top: 10px; text-align: center;">
                    <div style=" width: 320;height: 320; border: 1px solid blue;">
                        <a href="goods.do?method=findbyid&goodsid=${goods.goodsid }">
                            <img alt="查看详情" style="border:0px;" src="${pageContext.request.contextPath }/hewolf-tmall/shopimage/${goods.goodspic}">
                        </a>
                    </div>
                    <div class="shopname">商品名：${goods.goodsid }</div>
                    <div style="margin-top: 15px;">商品名：${goods.goodsname }</div>
                    <div class="shopprice">
                      	  天猫新风尚：
                        <span id="y">￥</span>
                        <span id="price">${goods.goodsprice }</span>
                    </div>
                    <div class="ljqg">
                        <a href="goods.do?method=findbyid&goodsid=${goods.goodsid }">立即抢购</a>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- 表部底部 -->
        <div style="width: 100%;">
            <iframe style="height: 600px;" src="${pageContext.request.contextPath }/hewolf-tmall/footer.jsp" scrolling="no" border="0"
                width="100%" frameborder="no">
            </iframe>
        </div>
    </div>
</body>

</html>