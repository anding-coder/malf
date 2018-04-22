<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/1.css"/>
</head>
<body>
<div id="site-nav" data-spm="a2226mz" role="navigation">
    <div id="sn-bg">
        <div class="sn-bg-right">
        </div>
    </div>
    <div id="sn-bd">
        <b class="sn-edge"></b>
        <div class="sn-container">
            <p class="sn-back-home">
            <a href="${pageContext.request.contextPath }/hewolf-tmall/view-shoplogin.jsp" target="top">天猫首页</a>
            </p>
            <p id="login-info" class="sn-login-info">
            <em>喵，欢迎来天猫</em>
            <a target="_black" class="sn-login" href="${pageContext.request.contextPath }/login.jsp">请登录</a>
            <a target="_black" class="sn-register" href="${pageContext.request.contextPath }/register.jsp" target="_top">免费注册</a></p>
            <ul class="sn-quick-menu">
                <li class="sn-mytaobao menu-item j_MyTaobao">
                    <div class="sn-menu">
                        <a class="menu-hd" href="//i.taobao.com/my_taobao.htm" target="_top" rel="nofollow" tabindex="0" aria-haspopup="true" aria-expanded="false">我的淘宝<b></b></a>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-20">
                            <div class="menu-bd-panel" id="myTaobaoPanel">
                                <a href="//trade.taobao.com/trade/itemlist/list_bought_items.htm?t=20110530" target="_top" rel="nofollow">已买到的宝贝</a>
                                <a href="//trade.taobao.com/trade/itemlist/list_sold_items.htm?t=20110530" target="_top" rel="nofollow">已卖出的宝贝</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="sn-seller-center hidden j_SellerCenter">
                    <a target="_top" href="//mai.taobao.com/seller_admin.htm">商家中心</a>
                </li>
                <li class="sn-mybrand">
                    <a target="_top" id="J_SnMyBrand" class="sn-mybrand-link" href="//mybrand.tmall.com?scm=1048.1.1.1">我关注的品牌</a>
                </li>
                <li class="sn-cart mini-cart menu">
                    <a class="sn-cart-link" href="//cart.tmall.com/cart/myCart.htm?from=btop" target="_top" rel="nofollow" id="mc-menu-hd">购物车<span class="mc-count mc-pt3">0</span>件</a>
                </li>
                <li class="sn-favorite menu-item">
                    <div class="sn-menu">
                        <a class="menu-hd" href="//shoucang.taobao.com/shop_collect_list.htm?scjjc=c1" target="_top" rel="nofollow" tabindex="0" aria-haspopup="true" aria-expanded="false">收藏夹<b></b></a>

                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-22">
                            <div class="menu-bd-panel">
                                <a href="//shoucang.taobao.com/item_collect.htm" target="_top" rel="nofollow">收藏的宝贝</a>
                                <a href="//shoucang.taobao.com/shop_collect_list.htm" target="_top" rel="nofollow">收藏的店铺</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="sn-separator"></li>
                <li class="sn-mobile">
                    
                    <a title="天猫无线" target="_top" class="sn-mobile-link" href="//pages.tmall.com/wow/portal/act/app-download?scm=1027.1.1.1">手机版</a>
                </li>
                <li class="sn-home">
                    <a href="//www.taobao.com/">淘宝网</a>
                </li>
                <li class="sn-seller menu-item">
                    <div class="sn-menu J_DirectPromo">
                        <a class="menu-hd" href="//mai.taobao.com" target="_top">商家支持<b></b></a>
                        <div class="menu-bd sn-seller-lazy">
                        <ul>
    <li><h3>商家：</h3>
        <a target="_top" href="//mai.taobao.com/">商家中心</a>
        <a class="sitemap-right" target="_top" href="//zhaoshang.tmall.com/?acm=lb-tms-1104633-90536.1003.4.268545&amp;scm=1003.4.lb-tms-1104633-90536.OTHER_2_268545">商家入驻</a>
        <a target="_top" href="//fw.tmall.com/?acm=lb-tms-1104633-90536.1003.4.268545&amp;scm=1003.4.lb-tms-1104633-90536.OTHER_3_268545">运营服务</a>
        <a class="sitemap-right" target="_top" href="//www.tmall.com/wow/seller/act/tmallpinkong">商家品控</a> <a target="_top" href="//fuwu.tmall.com/?acm=lb-tms-1104633-90536.1003.4.268545&amp;scm=1003.4.lb-tms-1104633-90536.OTHER_5_268545">商家工具</a>
        <a class="sitemap-right" target="_top" href="//guize.tmall.com/?acm=lb-tms-1104633-90536.1003.4.268545&amp;scm=1003.4.lb-tms-1104633-90536.OTHER_6_268545">商家规则</a>
        <a target="_top" href="//zhiku.tmall.com">天猫智库</a>
        <a class="sitemap-right" target="_top" href="//maowo.tmall.com/?acm=lb-tms-1104633-90536.1003.4.268545&amp;scm=1003.4.lb-tms-1104633-90536.OTHER_8_268545">喵言喵语</a>
    </li>
    <li><h3>帮助：</h3>
        <a target="_top" href="//helpcenter.tmall.com/index?from=high">帮助中心</a>
        <a target="_top" href="//infob.taobao.com/help">问商友</a>
    </li>
</ul></div>
                    </div>
                </li>
                <li class="sn-sitemap">
                    <div class="sn-menu">
                        <h3 class="menu-hd"><i class="mui-global-iconfont"></i><span>网站导航</span><b></b></h3>
                        <div class="menu-bd sn-sitemap-lazy sn-sitemap-bd" data-spm="a2228l4">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>