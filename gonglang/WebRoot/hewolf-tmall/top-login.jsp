<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html class="ks-webkit537 ks-webit ks-chrome65 ks-chrome w1190">

    <head>
        <title></title>
        <meta charset="utf-8">   
        <link rel="stylesheet" type="text/css" media="screen" href="css/top.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/top-body.css" />
    </head>

    <body>
         <!--导航栏-->
        <div id="site-nav" data-spm="a2226mz" role="navigation">
            <div id="sn-bg">
                <div class="sn-bg-right"></div>
            </div>
            <div id="sn-bd">
                <b class="sn-edge"></b>
                <div class="sn-container">
                    <p class="sn-back-home">
                        <a href="#">天猫首页</a>
                    </p>
                    <p id="login-info" class="sn-login-info">
                        <span class="sn-welcome-info">
                            <span>Hi，</span>
                            <a id="aname" target="_top" class="j_Username j_UserNick sn-user-nick" href="#"
                                title="value" style="color: red;font-weight:900;">
                               <%=new String(request.getParameter("value").getBytes("ISO-8859-1"), "utf-8")%>
                            </a>
                            <a class="j_Identity sn-identity hidden" target="_top"></a>
                            <a title="会员中心" class="j_MemberLevel sn-member-level sn-member-level-normal" href="#"
                                target="_top"></a>
                            <a class="j_Point sn-point" target="_top" href="#">积分
                                <em class="j_PointValue sn-point-value">121</em>
                            </a>
                        </span>
                        <span class="j_Message sn-message-cont">
                            <span class="j_MessageCont">
                                <a target="_top" href="#"
                                    class="j_MessageText sn-all-msg menu-hd">消息
                                    <em class="j_MessageNum sn-msg-num">29</em>
                                </a>
                            </span>
                        </span>
                        <span class="sn-msg-box j_MesssageBox hidden">
                            <i class="sn-msg-hd"></i>
                            <span class="sn-msg-bd">
                                <a href="#" class="j_MessageTitle sn-msg-title">加入积分聚乐部</a>
                                <b class="j_CloseMessage sn-msg-close">×</b>
                            </span>
                        </span>
                        <span class="sn-welcome-info">
                            <a class="sn-logout" target="_top" href="#"
                                id="J_Logout">退出</a>
                        </span>
                    </p>
                    <ul class="sn-quick-menu">
                        <li class="sn-mytaobao menu-item j_MyTaobao">
                            <div class="sn-menu">
                                <a class="menu-hd" href="#" target="_top" rel="nofollow" tabindex="0" aria-haspopup="true" aria-expanded="false">我的淘宝
                                    <b></b>
                                </a>
                                <div class="menu-bd" role="menu" aria-hidden="true" id="menu-4">
                                    <div class="menu-bd-panel" id="myTaobaoPanel">
                                        <a href="#" target="_top" rel="nofollow">已买到的宝贝</a>
                                        <a href="#"
                                            target="_top" rel="nofollow">已卖出的宝贝</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="sn-seller-center hidden j_SellerCenter">
                            <a target="_top" href="#">商家中心</a>
                        </li>
                        <li class="sn-mybrand">
                            <a target="_top" id="J_SnMyBrand" class="sn-mybrand-link" href="#">我关注的品牌</a>
                        </li>
                        <li class="sn-cart mini-cart menu">
                            <a class="sn-cart-link" href="#" target="_top" rel="nofollow"
                                id="mc-menu-hd">购物车
                                <span class="mc-count">35</span>件
                            </a>
                        </li>
                        <li class="sn-favorite menu-item">
                            <div class="sn-menu">
                                <a class="menu-hd" href="#" target="_top" rel="nofollow" tabindex="0"
                                    aria-haspopup="true" aria-expanded="false">收藏夹
                                    <b></b>
                                </a>

                                <div class="menu-bd" role="menu" aria-hidden="true" id="menu-6">
                                    <div class="menu-bd-panel">
                                        <a href="#" target="_top" rel="nofollow">收藏的宝贝</a>
                                        <a href="#" target="_top" rel="nofollow">收藏的店铺</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="sn-separator"></li>
                        <li class="sn-mobile">
                            <a title="天猫无线" target="_top" class="sn-mobile-link" href="#">手机版</a>
                        </li>
                        <li class="sn-home">
                            <a href="#">淘宝网</a>
                        </li>
                        <li class="sn-seller menu-item">
                            <div class="sn-menu J_DirectPromo">
                                <a class="menu-hd" href="#" target="_top">商家支持
                                    <b></b>
                                </a>
                                <div class="menu-bd sn-seller-lazy">
                                    <ul>
                                        <li>
                                            <h3>商家：</h3>
                                            <a target="_top" href="#">商家中心</a>
                                            <a class="sitemap-right" target="_top" href="#">天猫规则</a>
                                            <a class="sitemap-right" target="_top" href="#">商家入驻</a>
                                            <a target="_top" href="#">运营服务</a>
                                            <a class="sitemap-right" target="_top" href="#">商家品控</a>
                                            <a target="_top" href="#">商家工具</a>
                                            <a target="_top" href="#">天猫智库</a>
                                            <a class="sitemap-right" target="_top" href="#">喵言喵语</a>
                                        </li>
                                        <li>
                                            <h3>帮助：</h3>
                                            <a target="_top" href="#">帮助中心</a>
                                            <a target="_top" href="#">问商友</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="sn-sitemap">
                            <div class="sn-menu">
                                <h3 class="menu-hd">
                                    <i class="mui-global-iconfont"></i>
                                    <span>网站导航</span>
                                    <b></b>
                                </h3>
                                <div class="menu-bd sn-sitemap-lazy sn-sitemap-bd" data-spm="a2228l4">
                                    <div class="site-cont site-hot">
                                        <h2>热点推荐
                                            <span>Hot</span>
                                        </h2>
                                        <ul class="site-list">
                                            <li>
                                                <a href="#">天猫超市</a>
                                            </li>
                                            <li>
                                                <a href="#">喵鲜生</a>
                                            </li>
                                            <li>
                                                <a href="#">科技新品
                                                    <i class="sn-sitemap-icon sn-sitemap-icon-new"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">女装新品
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">酷玩街</a>
                                            </li>
                                            <li>
                                                <a href="#">内衣新品
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">试美妆</a>
                                            </li>
                                            <li>
                                                <a href="#">运动新品</a>
                                            </li>
                                            <li>
                                                <a href="#">时尚先生
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">精明妈咪</a>
                                            </li>
                                            <li>
                                                <a href="#">吃乐会
                                                    <i class="sn-sitemap-icon sn-sitemap-icon-new"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">企业采购</a>
                                            </li>
                                            <li>
                                                <a href="#">会员积分</a>
                                            </li>
                                            <li>
                                                <a href="#">天猫国际</a>
                                            </li>
                                            <li>
                                                <a href="#">品质频道</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="site-cont site-market">
                                        <h2>行业市场
                                            <span>Market</span>
                                        </h2>
                                        <ul class="site-list">
                                            <li>
                                                <a href="#">美妆</a>
                                            </li>
                                            <li>
                                                <a href="#">电器</a>
                                            </li>
                                            <li>
                                                <a href="#">女装
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">男装
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">女鞋</a>
                                            </li>
                                            <li>
                                                <a href="#">男鞋</a>
                                            </li>
                                            <li>
                                                <a href="#">内衣
                                                    <i class="sn-sitemap-icon  sn-sitemap-icon-hot "></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">箱包</a>
                                            </li>
                                            <li>
                                                <a href="#">运动</a>
                                            </li>
                                            <li>
                                                <a href="#">母婴</a>
                                            </li>
                                            <li>
                                                <a href="#">家装</a>
                                            </li>
                                            <li>
                                                <a href="#">医药</a>
                                            </li>
                                            <li>
                                                <a href="#">食品</a>
                                            </li>
                                            <li>
                                                <a href="#">配饰
                                                    <i class="sn-sitemap-icon sn-sitemap-icon-new"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">汽车</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="site-cont site-help">
                                        <h2>服务指南
                                            <span>Help</span>
                                        </h2>
                                        <ul class="site-list">
                                            <li>
                                                <a href="#">帮助中心 </a>
                                            </li>
                                            <li>
                                                <a href="#">品质保障 </a>
                                            </li>
                                            <li>
                                                <a href="#">特色服务 </a>
                                            </li>
                                            <li>
                                                <a href="#">7天退换货 </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	     
	     <!--搜索框-->
	     <div id="header">
	       <div id="headerContent">
	           <div id="mallLogo">
	               <img src="images/TB11ojWRXXXXXafaFXXXXXXXXXX-190-27.png" alt="图片跑了">
	           </div>
	           <div id="shopExtra">
	               <input id="ser-txt" type="text" placeholder="搜索 公狼 商品/品牌">
	               <input id="ser-btn" type="button" value="搜索">
	           </div>
	       </div>
	    </div>
    </body>

    </html>