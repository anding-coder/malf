<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
    <title>天猫活动页</title>
    <meta charset="utf-8" />
    <meta name="description" content="淘宝, 店铺, 旺铺, 公狼旗舰店" />
    <meta name="keywords" content="欢迎前来淘宝网公狼旗舰店 旺铺，众多商品任你选购" />
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/2.css">
    <style>
    </style>
</head>

<body>
    <div>
        <div id="page" class="shop-tmall">

            <!--顶部导航菜单栏-->
                <iframe id="iframename" src="${pageContext.request.contextPath }/hewolf-tmall/top-login.jsp?value=${goods.username}" scrolling="no"
                    border="0" height="200px" width="100%" frameborder="no"></iframe>
                    
            <!--旺旺在线-->
            <!-- <div class="tshop-psm-shop-ww-hover ">
                <div class="skin-box-content">
                    <div class="skin-box-hd">

                        <div class="fans">
                            <a class="img" href="#" target="_blank" rel="nofollow"></a>
                        </div>
                        <div class="WW">
                            <div class="img">
                                <span class="ww-light ww-large">
                                    <a href="#" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。">
                                        <span>旺旺在线</span>
                                    </a>
                                </span>
                            </div>
                        </div>

                        <div class="toTop tb-scrolling">
                            <div class="img"></div>
                        </div>
                    </div>
                    <div class="skin-box-bd">
                        <ul>
                            <li class="service-block first-block">

                                <a class="shop-name" href="#" rel="nofollow">
                                    <span>公狼旗舰店</span>
                                </a>
                                <span class="ww-light ww-large" data-nick="%E5%85%AC%E7%8B%BC%E6%97%97%E8%88%B0%E5%BA%97" data-tnick="%E5%85%AC%E7%8B%BC%E6%97%97%E8%89%A6%E5%BA%97"
                                    data-encode="true" data-display="inline">
                                    <a href="#" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。">
                                        <span>旺旺在线</span>
                                    </a>
                                </span>
                            </li>
                            <li class="service-block" style="display: none;">
                                <h4>在线客服</h4>
                                <ul class="service-content wws" data-gnick="%B9%AB%C0%C7%C6%EC%BD%A2%B5%EA" data-nick="%E5%85%AC%E7%8B%BC%E6%97%97%E8%88%B0%E5%BA%97"
                                    data-group-filter="all" data-url="//osdsc.alicdn.com//taesite/TB1dqpVKFXXXXbsXXXXUxnn4FXX.groupmember|var^groupMember;sign^137961f6c0709a381cc262fdf65e452b;lang^gbk;t^1503764170000">
                                </ul>
                                <div class="more-WW">
                                    <span>更多</span>
                                    <i class="triangle"></i>
                                </div>
                            </li>
                            <li class="service-block">
                                <h4>工作时间</h4>
                                <ul class="service-content">
                                    <li>
                                        <span class="date">周一至周日</span>：
                                        <span class="time">
                                            8:00-24:00</span>
                                    </li>
                                    <li>
                                        <span class="date">周六至周日</span>：
                                        <span class="time">
                                            0:00-24:00</span>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> -->

            <!--公狼官方旗舰店图片
            <div class="rel">
                <a class="a1" href="#" target="_blank"></a>
                <a class="a3" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:662px;z-index:10;"></a>
                <a class="a4" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:739px;z-index:10;"></a>
                <a class="a5" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:819px;z-index:10;"></a>
                <a class="a6" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:896px;z-index:10;"></a>
                <a class="a7" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:976px;z-index:10;"></a>
                <a class="a8" href="#" target="_blank" style="display:block;width:74px;height:24px;margin-top:105px;left:1054px;z-index:10;"></a>
                <a class="a9" href="#" target="_blank" style="display:block;width:81px;height:24px;margin-top:104px;left:1134px;z-index:10;"></a>
                <a class="a2" href="#" target="_blank" style="display:block;width:263px;height:101px;margin-top:30px;left:1227px;z-index:10;"></a>
                <form name="SearchForm" action="#" method="post" target="_blank" class="top_tu">
                    <ul>
                        <li>
                            <input name="keyword" class="gjz abs" value="" type="text"> </li>
                        <li>
                            <input class="ss abs" value="" type="submit">
                        </li>
                    </ul>
                </form>
            </div>
        </div>-->
        <!-- 图片1 -->
        <div class="rel" data-title="power by 47rq.com" style="position:relative;
            overflow:hidden;
            width:1920px;
            height:680px;
            background:url(hewolf-tmall/image/main-1.jpg) 50% 0% no-repeat scroll;
            line-height:normal;
            margin-left:50%;
            left:-960px;" data-rn="ajKNS">
                        <a class="jdb abs ajKNS-vuFx" href="#" target="_blank" style="display:block;
            width:1724px;
            height:668px;
            top:5px;
            left:5px;
            z-index:10;" data-linkmode="ptlink" data-appid="ajKNS-vuFx">
            </a>
        </div>

        <!-- 图片2 -->
        <div class="rel" data-title="power by 47rq.com" style="position:relative;
            overflow:hidden;
            width:1920px;
            height:536px;
            background:url(hewolf-tmall/image/main-2.jpg) 50% 0% no-repeat scroll;
            line-height:normal;
            margin-left:50%;
            left:-960px;" data-rn="aJ2cy">
                        <a class="jdb abs aJ2cy-7GPe" href="#" target="_blank" style="display:block;
            width:367px;
            height:214px;
            top:256px;
            left:777px;
            z-index:10;" data-linkmode="ptlink" data-appid="aJ2cy-7GPe">
            </a>
        </div>


        <!-- 商品列表-->
        <div style="width: 1050;margin: 0 auto; border: 1px solid red;">
            <c:forEach items="${list }" var="goods1">
                <div style=" width: 320;height: 460;  float: left;margin-left: 20px; margin-top: 10px; text-align: center;">
                    <div style=" width: 320;height: 320; border: 1px solid blue;">
                        <a href="goods.do?method=findbyid&goodsid=${goods1.goodsid }">
                            <img alt="查看详情" style="border:0px;" src="${pageContext.request.contextPath }/hewolf-tmall/shopimage/${goods1.goodspic}">
                        </a>
                    </div>
                    <div class="shopname">商品名：${goods1.goodsid }</div>
                    <div style="margin-top: 15px;">商品名：${goods1.goodsname }</div>
                    <div class="shopprice">
                        天猫新风尚：
                        <span id="y">￥</span>
                        <span id="price">${goods1.goodsprice }</span>
                    </div>
                    <div class="ljqg">
                        <a href="goods.do?method=findbyid&goodsid=${goods1.goodsid }">立即抢购</a>
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