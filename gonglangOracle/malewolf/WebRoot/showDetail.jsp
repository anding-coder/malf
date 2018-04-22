<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet" href="css/showDetail.css"/>
<script>

	function addCar(){
		var num = document.getElementById("num").value ;
		location = "goods.do?method=addCar&goodsid=${goods.goodsid}&num="+num ;
		
	}
</script> 
</head>
<body>
<div style=" width: 1220px;border: 1px solid red; margin: 0 auto;">
     <!-- 图片    加收藏 -->
	<div style="float:left; width: 420px; margin: 0 auto; ">
	  
		  <div style="border: 1px solid blue;"> 
	 	    <img src="${pageContext.request.contextPath}/shopimage/${goods.goodspic}"> 
		  </div> 
	  <div>
		<a style="text-decoration: none;" href="goods.do?method=addCollection&goodsid=${goods.goodsid }">收藏</a>
	  </div>
	  <!-- 鼠标放到图片上图片变大 -->
	<!--    
    <iframe scrolling="no"  frameborder="no" src="${pageContext.request.contextPath  }/lookpicture/lookpicture.jsp"
     style="width: 420px;height: 440px; margin: 0 auto;">
    </iframe> -->
	</div>
	
      <!-- 购买加入购物车 -->
	<div class="shopcount"   style="float:left;margin-left:20px; width: 520px; border: 1px solid green;">
		    <!-- 商品名字 -->
			<div class="shopname">
			   <h1>${goods.goodsname }</h1>
			</div>
			
		    <!-- 灰白色方格图片 -->
		    <div class="tm-fcs-pane1" style="background-image:url('image/index.png');">
		         <div class="tm-coupon-panel">
                    <img src="image/gouwujaun.png" height="16">全天猫实物商品通用 
                    <a id="J_guaGuaKaPc" target="_blank" style="background-image:url(image/you.png);background-size:16px 16px;">去刮券</a>
                  </div>
                    
				<div style="text-decoration: line-through;"><span id="jg" >价格</span>¥ ${goods.goodsprice+300 }</div>
				<div style="height: 36px;">
				  <span id="cxj" >促销价</span>
				   <span id=cxjg>¥  ${goods.goodsprice }</span>
				   <em class="tm-promo-type " style="background-color: #f47a86;border-radius: 1px;color: #fff;height: 16px;line-height: 16px;margin: 0 2px 4px 6px;padding: 1px 5px;position: relative;">火热促销</em>
				</div>
			</div>
			
			<!--评论积分-->
			<div style="margin-top:10px; width: 510px; height: 38px;">
				 <ul class="tm-ind-panel">
			          <li class="tm-ind-item tm-ind-sellCount" data-label="月销量">
			               <div class="tm-indcon">
			                 <span class="tm-label">月销量</span>
			                  <span class="tm-count">25</span>
			               </div>
			          </li>
			          <li class="tm-ind-item tm-ind-reviewCount canClick tm-line3" id="J_ItemRates">
			                      <div class="tm-indcon">
			                      <span class="tm-label">累计评价</span>
			                      <span class="tm-count">282</span>
			                      </div>
			          </li>
			    	
				     <li class="tm-ind-item tm-ind-emPointCount" data-spm="1000988">
				        <div class="tm-indcon">
					        <a href="//vip.tmall.com/vip/index.htm" target="_blank">
					        <span class="tm-label">送天猫积分</span>
					        <span class="tm-count">${goods.goodsprice}</span>
					        </a>
					        </div>
					    </li>
				   </ul>
			</div>
			
			<!-- 数量库存 -->
			<div class="amount" style="margin-left: 10px;">
				     <span id="">数量</span>
					<input id="bt1" type="button" value="-" onclick="">
					<input  type="text" id="num" value="1">
					<input id="bt2" type="button" value="+" onclick="">
					<span>件</span>
					 <span style="margin-left: 10px;">库存数量：${goods.goodscount }</span>  
			</div>
			<!-- 购买加入购物车 -->
			<div class="tb-action">
				<div class="tb-btn-buy">
				  <a id="ljgm" href="goods.do?method=buyshop&goodsid=${goods.goodsid }">立即购买</a>
			</div>
				<div class="tb-btn-basket">
				  <a href="javascript:void(0)" onclick="addCar()">加入购物车</a>
				</div>
			</div>
        
             <!-- 服务承诺 -->
             <div style="width: 510px; height:70px; font-size: 12px;color: #666;">
                 <dl style="float: left; margin-left: 35px; margin-top: 50px;">
                    <dt style="float: left; color: #999;">服务承诺</dt>
                    <a style="margin-left: 35px;">正品保证</a>
                    <a style="margin-left: 35px;">极速退货</a>
                    <a style="margin-left: 35px;">赠运费险</a>
                    <a style="margin-left: 35px;">七天无理由退换</a>
                 </dl>
             </div>		
		
		<a style="text-decoration: none;"  href="user.do?method=showCollection">收藏夹</a>
	</div>
	
	<iframe src="huan.jsp?tid=${goods.tid }" scrolling="no"  style="width: 220px; height: 480px; border: 1px solid blue; margin-left: 20px;" >
	
	</iframe>
</div>
</body>
</html>


