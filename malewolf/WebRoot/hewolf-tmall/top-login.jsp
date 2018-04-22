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
            <a href="${pageContext.request.contextPath }/hewolf-tmall/view-shoplogin.jsp" target="top">天猫首页</a></p><p id="login-info" class="sn-login-info"><span class="sn-welcome-info">         
           <span>Hi，</span>  
            <a id="aname" target="_top" class="j_Username j_UserNick sn-user-nick" href="http://vip.tmall.com?t=1504028495919" title="value"
              style="color: red;font-weight:900;"><%=new String(request.getParameter("value").getBytes("ISO-8859-1"), "utf-8")%></a>   
              <a class="j_Identity sn-identity hidden" target="_top"></a>   
                <a title="会员中心" class="j_MemberLevel sn-member-level sn-member-level-normal" href="//vip.tmall.com?t=1504028495919" target="_top"></a>                      
                  <a class="j_Point sn-point" target="_top" href="//vip.tmall.com/point/all?from=top&amp;scm=1027.1.1.4">积分<em class="j_PointValue sn-point-value">121</em>       
                    </a>             
                     </span>      
                      <span class="j_Message sn-message-cont">     
                       <span class="j_MessageCont">     
                        <a target="_top" href="//vip.tmall.com/message/tmaller?spm=3.1000473.0.4.equqSK&amp;from=messagebox&amp;scm=1027.1.1.5" class="j_MessageText sn-all-msg menu-hd">消息<em class="j_MessageNum sn-msg-num">29</em>  
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
             <a class="sn-logout" target="_top" href="//login.taobao.com/member/logout.jhtml?redirectURL=%2F%2Flogin.tmall.com%2F%3FredirectURL%3Dhttps%253A%252F%252Fhewolf.tmall.com%252Fsearch.htm" id="J_Logout">退出</a>       
              </span></p>
            <ul class="sn-quick-menu">
                <li class="sn-mytaobao menu-item j_MyTaobao">
                    <div class="sn-menu">
                        <a class="menu-hd" href="//i.taobao.com/my_taobao.htm" target="_top" rel="nofollow" tabindex="0" aria-haspopup="true" aria-expanded="false">我的淘宝<b></b></a>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-4">
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
                    <a class="sn-cart-link" href="//cart.tmall.com/cart/myCart.htm?from=btop" target="_top" rel="nofollow" id="mc-menu-hd">购物车<span class="mc-count">35</span>件</a>
                </li>
                <li class="sn-favorite menu-item">
                    <div class="sn-menu">
                        <a class="menu-hd" href="//shoucang.taobao.com/shop_collect_list.htm?scjjc=c1" target="_top" rel="nofollow" tabindex="0" aria-haspopup="true" aria-expanded="false">收藏夹<b></b></a>

                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-6">
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
                        </div>
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