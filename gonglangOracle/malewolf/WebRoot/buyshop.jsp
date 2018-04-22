<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>购物</title>
    <meta content="text/html" charset="utf-8">
     <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/url.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/buyshop.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/AIO-tmall.css">
  </head>
  
  <body>
  <div class="page">
  <div class="center">
   
   <div class="tmall">
	   <div class="tmallimage">
	      <img style="height: 28px;width: 190px;margin-top: 36px;" src="${pageContext.request.contextPath }/image/11.png">
	   </div>
   </div>
   <div class="content">
      <div class="order" id="address" >
       <h2 style="font-size: 16px;">选择收货地址</h2>
       <div class="addr" >
       <div class="addr-hd" title="湖南 株洲 (朱旺求收)" >
       <span class="prov" >湖南</span>
       <span class="city" >株洲</span>
       <span >（</span>
       <span class="name" >朱旺求</span>
       <span > 收）</span>
       </div>
       <div class="addr-bd" title="天元嵩山路 湖南工业大学新校区宿舍楼35栋" >
       <span class="dist" >天元</span>
       <span class="town" >嵩山路</span>
       <span class="addr4tip"></span>
       <span class="street" data-street="湖南工业大学新校区宿舍楼35栋" >湖南工业大学新校区宿舍楼35栋</span>
       <span class="phone" style="display:inline;" >18373358890</span>
       <span class="last" >&nbsp;</span>
       </div>
       <div class="addr-toolbar" >
        <a title="修改地址" class="modify">修改</a>
       </div>
       </div> 
        <div class="control" >
                 <a class="showAllAddr" href="#" >显示全部地址</a>
		         <a class="manageAddr" href="#" >管理收货地址</a>
<!-- 		     <input class="addAddr" value="使用新地址"  type="button"> -->
	    </div>   
       </div>
       
       <!-- 确认订单信息 -->
	       <div class="order-orderDesc" id="orderDesc_0" >
		       <h2 class="buy-th-title" style="font-size: 16px;">确认订单信息</h2>
		       <div class="buy-th buy-th-column-6" >
			       <div class="buy-td td-0" >店铺宝贝</div>
			       <div class="buy-td td-1" >商品属性</div>
			       <div class="buy-td td-2" >单价</div>
			       <div class="buy-td td-3">数量</div>
			       <div class="buy-td td-4" >优惠方式</div>
			       <div class="buy-td td-5" style="width: 120px;">小计</div>
		       </div>
	       </div>
	       
	       <!-- 确认订单信息  订单详情 -->
	       
	       <div id="order" class="order-order">
			<div class="order-orderInfo" id="orderInfo">
				<img src="image/tmall.png" class="shopIcon">
				<span class="shop-name">店铺:&nbsp;</span>
				<a class="shop-url" href="//store.taobao.com/shop/view_shop.htm?shop_id=57301407" target="_blank">美特斯邦威官方网店</a>
				<span class="ww-light ww-small" data-encode="true" data-nick="美特斯邦威官方网店" data-display="inline" data-icon="small">
<a href="" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"><span>旺旺在线</span></a>
				</span>
			</div>
			<div class="order-item order-item-column-4" id="item">
				<div class="order-itemInfo" id="itemInfo">
					<div class="info-detail info-cell">
						<div class="info-cell">
							<a class="info-img" href="//detail.tmall.com/item.htm?id=526085177745" target="_blank"><img class="info-img" src="${pageContext.request.contextPath }/hewolf-tmall/shopimage/${goods.goodspic }"></a>
						</div>
						<div class="info-cell info-msg" style="float: right;">
							<a href="#" class="info-title" target="_blank">【99欢聚价】${goods.goodsname }</a>
							<div class="info-icon-list">
								<div>
									<a class="icon-main" title="" target="_blank"><img src="image/shengdian.png"></a>
									<a class="icon-main" title="消费者保障服务，卖家承诺7天退换" href="//pages.tmall.com/wow/seller/act/seven-day" target="_blank"><img src="image/7.png"></a>
									<a class="icon-main" title="消费者保障服务，卖家承诺如实描述" href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id=" target="_blank"><img src="image/ai.png"></a>
									<a class="icon-main" title="支持信用卡支付" target="_blank"><img src="image/bankcard.png"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="info-sku info-cell">
						<p><span class="hd"><span >颜色</span><span>：</span></span><span class="bd">里约红</span></p>
						<p><span class="hd"><span >尺码</span><span>：</span></span><span class="bd">185/104B</span></p>
					</div>
					<div class="info-price info-cell">${goods.goodsprice+30 }</div>
				</div>
				<div class="order-quantity" id="quantity_09785a4df6619645ac7aad6680e7f06d"><span>1</span><span></span><span></span></div>
				<div class="order-promotion item-promotion" id="promotion_09785a4df6619645ac7aad6680e7f06d">
					<div class="item-promotion-selecter"><span>省159.10:99欢聚价</span><span class="widget-tips-box"><img src="image/xiaoxi.png" class="wtip-icon" ><div class="wtip-msg-box" ><div class="wtip-arrow-icon" ></div><ins class="wtip-msg-icon" ></ins><div class="wtip-msg" ><ul><li>99欢聚价：省159.10元</li></ul></div></div></span>
						<div class="item-promotion-gift"></div>
					</div>
				</div>
				<div class="order-itemPay" id="itemPay_09785a4df6619645ac7aad6680e7f06d" style="float:right; width: 100px;">
				  <span class="simple-price">${goods.goodsprice }</span>
				 </div>
				<div class="seperator"></div>
			</div>
			<div id="orderExt_order_59f5ab5bf5177aa2df6a63ebe077dbe0" class="order-orderExt">
				<div id="extUser_order_59f5ab5bf5177aa2df6a63ebe077dbe0" class="order-extUser">
					<div class="order-memo" id="memo_59f5ab5bf5177aa2df6a63ebe077dbe0"><label class="memo-name" for="memo_59f5ab5bf5177aa2df6a63ebe077dbe0_1">给卖家留言：</label>
						<div class="memo-hint">
							<a class="hint-title">重要提醒</a>
							<div class="mui-msg mui-msg-normal hint-content"><ins class="mui-msg-icon mui-msg-icon-tip"></ins>
								<div class="mui-msg-content">此处所填内容仅限对商家的温馨提醒，若您需改变订单内容或另有特殊需求，请您务必通过旺旺与商家确认一致。否则，该填写内容将视为无效。</div><ins class="mui-msg-arrow mui-msg-arrow-top"></ins></div>
						</div>
						<div class="memo-detail" >
						<textarea class="text-area-input memo-input" style="margin-top: -15px;" placeholder="选填:对本次交易的说明(建议填写已和卖家协商一致的内容)" id="memo_59f5ab5bf5177aa2df6a63ebe077dbe0_1"></textarea>
						</div>
					</div>
				</div>
				<div id="extInfo_order_59f5ab5bf5177aa2df6a63ebe077dbe0" class="order-extInfo">
					<div class="order-deliveryMethod" id="deliveryMethod_59f5ab5bf5177aa2df6a63ebe077dbe0">
						<div>
							<div class="delivery-title">运送方式:</div>
							<div class="delivery-select">
								<div>
									<div class="select-item">
										<div class="select-info">
											<div class="delivery-box">
												<div><label for="normalDelivery">普通配送</label><span>快递 免邮</span><span></span></div>
											</div>
										</div>
										<div class="select-price">0.00</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order-postageInsurance" id="postageInsurance_59f5ab5bf5177aa2df6a63ebe077dbe0" >
						<div class="user-title">运费险:</div>
						<div class="user-operate"><label>
						<input class="ins-checkbox" checked="" disabled=""  type="checkbox">
						<span class="trigger" >运费险</span>
						<span class="ins-select" data-value="0" >聚划算卖家赠送，若确认收货前退货，可获保险赔付</span>
						</label>
							<span class="widget-tips-box">
						<img src="image/xiaoxi.png" class="wtip-icon" >
						<div class="wtip-msg-box" >
						<div class="wtip-arrow-icon" >
							
						</div><ins class="wtip-msg-icon" >
						</ins><div class="wtip-msg" >聚划算卖家赠送，若确认收货前退货，可获保险赔付</div>
						</div>
						</span>
							<a href="http://act.ju.taobao.com/go/act/juhuasuan/wuyougw.php?#f8" target="_blank" class="ins-question widget-tips-question">
							<img class="ins-question-icon" src="image/why.png"></a>
						</div>
						<div class="user-price checked" style="float: right; margin-top: -15px;">0.00</div>
					</div>
				</div>
			</div>
			<div class="orderPay">
			<span>店铺合计</span>
			<span>(含运费)</span>
			<span class="price g_price">
			  <span >￥</span>
			  <em class="style-middle-bold-red J_ShopTotal">${goods.goodsprice }</em>
			</span>
			</div>
		</div>
	       <!-- 提交个人信息 -->
	       <div class="order-payInfo" id="payInfo_1" >
			<div class="payInfo-wrapper" >
			<div class="payInfo-shadow" >
			<div class="order-realPay" id="realPay_1" >
			<div>
			<span class="realPay-title">实付款：</span>
			<span class="order-price">￥</span>
			<span class="realPay-price">${goods.goodsprice }</span>
			</div>
			</div>
			<div class="order-confirmAddr" id="confirmAddr_1">
			<div class="confirmAddr-addr" title="天元嵩山路 湖南工业大学新校区宿舍楼35栋">
			<span class="confirmAddr-title">寄送至：</span>
			<span class="confirmAddr-addr-bd">
			<span class="prov">湖南</span>
			<span class="city">株洲</span>
			<span class="dist">天元</span>
			<span class="town">嵩山路</span>
			<span class="street" data-street="湖南工业大学新校区宿舍楼35栋">湖南工业大学新校区宿舍楼35栋</span>
			</span>
			</div>
			<div class="confirmAddr-addr-user">
			<span class="confirmAddr-title">收货人：</span>
			<span class="confirmAddr-addr-bd">
			<span >朱旺求</span>
			<span>18373358890</span>
			</span>
			</div>
			</div>
			<div>
				
			</div>
			</div>
			</div>
			</div>
	       
       </div>
        
    
    <a  title="提交订单" class="go-btn1" style='margin-left:819px;   display: inline-block;font: 12px/1.5 tahoma,arial,"\5b8b\4f53";color: #fff;width: 182px;height: 39px;position: relative;vertical-align: middle;line-height: 39px;cursor: pointer;text-align: center;font-size: 14px;font-weight: 700;background: #ff0036;' href="goods.do?method=order"  target="_blank" >提交订单</a>
    
    
    </div>
    </div>
    
  </body>
</html>
