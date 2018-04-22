<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <jsp:include page="top-login.jsp"></jsp:include> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

	<head>
		<title>天猫活动页</title>
		<meta charset="utf-8"/>
		<meta name="description" content="淘宝, 店铺, 旺铺, 公狼旗舰店" />
		<meta name="keywords" content="欢迎前来淘宝网公狼旗舰店 旺铺，众多商品任你选购" />
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/hewolf-tmall/css/top-2.css">
		<!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
		<link rel="stylesheet" type="text/css" href="css/2.css">
		<style>

		</style>
	</head>

	<body>
      <div>
		<div id="page" class="shop-tmall">

			<!--顶部导航菜单栏-->
			<div id="site-nav" role="navigation">
				<div id="sn-bg">
					<div class="sn-bg-right"></div>
				</div>
				<iframe id="iframename"  src="${pageContext.request.contextPath }/hewolf-tmall/top-login.jsp?value=${goods.username}" 
				scrolling="no" border="0"width="100%" frameborder="no"></iframe>
			</div>
			<!--天猫搜素-->
			<div id="header">
				<div id="headerCon">
					<h1 id="mallLogo">
				<span class="mlogo">
					<a href="http://www.tmall.com">
					<img src="${pageContext.request.contextPath }/hewolf-tmall/images/TB11ojWRXXXXXafaFXXXXXXXXXX-190-27.png"/>
					</a>
				</span>
			</h1>
					<div id="shopExtra">
						<div class="slogo">
							<a class="slogo-shopname" href="">
								<strong>公狼旗舰店</strong>
							</a>
							<div class="slogo-extraicon bShop">
								<span class="flagship-icon">
            				<span class="flagship-icon-font">品牌直销</span>
								</span>

								<span class="ww-light ww-static" data-nick="%E5%85%AC%E7%8B%BC%E6%97%97%E8%88%B0%E5%BA%97" data-tnick="%E5%85%AC%E7%8B%BC%E6%97%97%E8%89%A6%E5%BA%97" data-encode="true" data-display="inline" data-icon="static"><a href="https://amos.alicdn.com/getcid.aw?v=3&amp;groupid=0&amp;s=1&amp;charset=utf-8&amp;uid=%E5%85%AC%E7%8B%BC%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobao" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"><span>旺旺在线</span></a>
								</span>

							</div>
						</div>
						<div id="shop-info">
							<div class="main-info">
								<div class="shopdsr-item">
									<div class="shopdsr-title">
										描述
									</div>
									<div class="shopdsr-score shopdsr-score-up-ctrl">
										<span class="shopdsr-score-con">4.8</span>
										<s class="shopdsr-score-up"></s>
									</div>
								</div>

								<div class="shopdsr-item">
									<div class="shopdsr-title">
										服务
									</div>
									<div class="shopdsr-score shopdsr-score-up-ctrl">
										<span class="shopdsr-score-con">4.8</span>
										<s class="shopdsr-score-up"></s>
									</div>
								</div>

								<div class="shopdsr-item">
									<div class="shopdsr-title">
										物流
									</div>
									<div class="shopdsr-score shopdsr-score-up-ctrl">
										<span class="shopdsr-score-con">4.8</span>
										<s class="shopdsr-score-up"></s>
									</div>
								</div>

								<a class="slogo-triangle"><i class="icon-triangle"></i></a>
							</div>
						</div>
					</div>
					<div class="shopwt">
						<div class="shopwt-desc">
							<div class="shopwt-title">手机逛</div>
							<img class="shopwt-qr" src="${pageContext.request.contextPath }/hewolf-tmall/images/$[ORR$3{~6JYQV8L74MM7AF.png"></i>
						</div>
					</div>
					<div class="header-extra">
						<div id="mallSearch" class="mall-search">
							<form name="searchTop" action="//list.tmall.com/search_product.htm" class="mallSearch-form" accept-charset="gbk">
								<fieldset>
									<div class="mallSearch-input clearfix">
										<div class="defaultSearch">
											<div id="s-combobox-133" class="s-combobox">
												<div class="s-combobox-input-wrap">

													<input name="q"  value="" id="mq" class="s-combobox-input"  title="请输入搜索文字" aria-label="请输入搜索文字" type="text" placeholder="搜索 天猫 商品/品牌/店铺">

												</div>

											</div>
											<button id="J_SearchBtn" type="submit">搜天猫<s></s>
											</button>
										</div>
										<button id="J_CurrShopBtn" class="currShopBtn" type="button">                                        搜本店<s></s></button>
										<input id="J_Type" name="type" value="p" type="hidden">
										<input id="J_MallSearchStyle" name="style" value="" type="hidden">
										<input id="J_Cat" name="cat" value="all" type="hidden">
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- 			<script> -->
<!-- 				TB.use("mod~global", function() { -->
<!-- 					if(TB.Global && TB.Global.init) { -->
<!-- 						TB.Global.init(); -->
<!-- 					} -->
<!-- 				}); -->
<!-- 			</script> -->
			<!--旺旺在线-->
			<div class="tshop-psm-shop-ww-hover ">
				<div class="skin-box-content">
					<div class="skin-box-hd">

						<!-- has1212DcPage:false -->

						<div class="fans">
							<a class="img" href="#" target="_blank" rel="nofollow"></a>
						</div>
						<!-- actitvityExist:false -->
						<div class="WW">
							<div class="img">
								<span class="ww-light ww-large"><a href="#" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"><span>旺旺在线</span></a>
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
								<!-- test: //hewolf.tmall.com -->
								<a class="shop-name" href="#" rel="nofollow"><span>公狼旗舰店</span></a>
								<span class="ww-light ww-large"   data-encode="true" data-display="inline">
								<a href="#" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"><span>旺旺在线</span></a>
								</span>
							</li>
							<li class="service-block" style="display: none;">
								<h4>在线客服</h4>
								<ul class="service-content wws"   data-group-filter="all">
								</ul>
								<div class="more-WW">
									<span>更多</span>
									<i class="triangle"></i>
								</div>
							</li>
							<li class="service-block">
								<h4>工作时间</h4>
								<ul class="service-content">
									<li><span class="date">周一至周日</span>：<span class="time">
                            8:00-24:00</span></li>
									<li><span class="date">周六至周日</span>：<span class="time">
                            0:00-24:00</span></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<script>
				if(window.TShop && window.TShop.ModUtil) {
					KISSY.ready(function() {
						TShop.use('mod~ww-hover', function(TS) {
							new TS.TshopPsmShopWwHover({
								mod: KISSY.DOM.get('.tshop-psm-shop-ww-hover')
							});
						});
					});
				}
			</script>

			<!--公狼官方旗舰店图片-->
			<div class="rel">
				<a class="a1" href="//hewolf.tmall.com/?spm=a1z10.1-b-s.w11566158-14865692691.1.19335493FJJYjS&amp;scene=taobao_shop" target="_blank"></a>
				<a class="a3" href="//hewolf.tmall.com/search.htm?search=y&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:662px;z-index:10;"></a>
				<a class="a4" href="//hewolf.tmall.com/category-296601340-927947281.htm?search=y&amp;catName=%D5%CA%C5%F1%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:739px;z-index:10;"></a>
				<a class="a5" href="//hewolf.tmall.com/category-739178657-927947281.htm?search=y&amp;catName=%C8%C8%CF%FA%B1%AC%BF%EE%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:819px;z-index:10;"></a>
				<a class="a6" href="//hewolf.tmall.com/category-296601347-927947883.htm?search=y&amp;catName=%BB%A7%CD%E2%B9%A4%BE%DF%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:896px;z-index:10;"></a>
				<a class="a7" href="//hewolf.tmall.com/category-296601345-927951828.htm?search=y&amp;catName=%C9%D5%BF%BE%D2%B0%B4%B6%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:105px;left:976px;z-index:10;"></a>
				<a class="a8" href="//hewolf.tmall.com/category-618180376-927953120.htm?search=y&amp;catName=%B5%C7%C9%BD%B9%A4%BE%DF%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:74px;height:24px;margin-top:105px;left:1054px;z-index:10;"></a>
				<a class="a9" href="//hewolf.tmall.com/category-296991176-927949541.htm?search=y&amp;catName=%BB%A7%CD%E2%D0%DD%CF%D0%BC%D2%BE%DF%BB%E1%B3%A1&amp;scene=taobao_shop" target="_blank" style="display:block;width:81px;height:24px;margin-top:104px;left:1134px;z-index:10;"></a>
				<a class="a2" href="//favorite.taobao.com/popup/add_collection.htm?id=64529396&amp;itemid=64529396&amp;itemtype=0&amp;ownerid=10f7dc3d0059fcc14f88e722a8d974cf&amp;scjjc=2&amp;scene=taobao_shop" target="_blank" style="display:block;width:263px;height:101px;margin-top:30px;left:1227px;z-index:10;"></a>
				<form name="SearchForm" action="//hewolf.tmall.com/search.htm?scene=taobao_shop" method="post" target="_blank" class="top_tu">
					<ul>
						<li>
							<input name="keyword" class="gjz abs" value="" type="text"> </li>
						<li>
							<input class="ss abs" value="" type="submit">
						</li>
					</ul>
				</form>
			</div>
			
		</div>
       <!-- 图片1 -->
		<div class="rel" data-title="power by 47rq.com" 
		style="position:relative;
		overflow:hidden;
		width:1920px;
		height:680px;
		background:url(hewolf-tmall/image/main-1.jpg) 50% 0% no-repeat scroll;
		line-height:normal;
		margin-left:50%;
		left:-960px;" data-rn="ajKNS">
				<a class="jdb abs ajKNS-vuFx"
				 href="#" target="_blank" 
				 style="display:block;
				 width:1724px;
				 height:668px;
				 top:5px;
				 left:5px;
				 z-index:10;"
				  data-linkmode="ptlink" data-appid="ajKNS-vuFx">
				  </a>
		  </div>
		  
		  <!-- 图片2 -->
         <div class="rel" data-title="power by 47rq.com"
          style="position:relative;
          overflow:hidden;
          width:1920px;
          height:536px;
          background:url(hewolf-tmall/image/main-2.jpg) 50% 0% no-repeat scroll;
          line-height:normal;
          margin-left:50%;
          left:-960px;" 
          data-rn="aJ2cy">
		          <a class="jdb abs aJ2cy-7GPe" 
		          href="#" target="_blank"
		           style="display:block;
		           width:367px;
		           height:214px;
		           top:256px;
		           left:777px;
		           z-index:10;" 
		           data-linkmode="ptlink" data-appid="aJ2cy-7GPe">
		           </a>
           </div>
   
   
         <!-- 商品列表-->     
 <div style="width: 1050;margin: 0 auto; border: 1px solid red;">
		<c:forEach items="${list }" var="goods1">
		    <div style=" width: 320;height: 460;  float: left;margin-left: 20px; margin-top: 10px; text-align: center;">
		    <div style=" width: 320;height: 320; border: 1px solid blue;">
				<a href="goods.do?method=findbyid&goodsid=${goods1.goodsid }" >
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
	   <iframe  style="height: 600px;"   src="${pageContext.request.contextPath }/hewolf-tmall/footer.jsp" 
			scrolling="no" border="0"width="100%" frameborder="no">
		</iframe>
	</div>
	</div>
	
	</body>

</html>