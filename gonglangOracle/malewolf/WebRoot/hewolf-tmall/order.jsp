<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"></meta>
<title>订单中心</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/pay.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/order.css"></link>
</head>

<body>
	<!-- 头部 -->
	<div id="header">
		<div class="header-container fn-clear">
			<div class="header-title">
				<span class="logo">支付宝<s></s></span> <span class="logo-title">我的收银台</span>
			</div>
			<ul class="header-right">
				<li class="account-id">支付宝账户：<span id="J-accountId">704115841@qq.com</span></li>
				<li><a target="_blank" seed="pay-by-standard"
					href="https://shenghuo.alipay.com/peerpaycore/prePeerPayApply.htm?biz_no=2017120121001001135367942470&amp;biz_type=TRADE">找人代付</a></li>
				<li>唯一热线：95188</li>
			</ul>
		</div>
	</div>

	<!-- 中间部分 -->
	<div id="content">
		<div id="J_Order" class="order order-with-qr">
			<div class="order-wrapper">
				<div class="qr J_APop" data-arrowposition="10" data-target="J_QrTip">
					<img alt="" src="image/paymoney.png"
						style="height: 100px; width: 100px; ">
					<div id="J_QrWrapper" class="qr-wrapper">
						<canvas width="100" height="100"
							style="width: 100px; height: 100px;"></canvas>
					</div>
				</div>
				<script id="J_QrTip" type="text/tip-template">
					<div class="qr-tip">
				  	 <h3>扫码支付</h3>
					<p>使用手机支付宝扫描二维码付款</p>
					<p>[仅限本人使用]</p>
					<p class="qrcode-overlay-link">
 					 <a href="#" target="_blank" data-width="500" data-height="350" class="J_XBox qrcode-download-link">手机支付宝下载</a>|
  						<a href="https://help.alipay.com/lab/help_detail.htm?help_id=380925" target="_blank">如何使用?</a>
					</p>	
                   </div>
			</script>

				<div class="order-title">天猫Tmall -- 公狼帐篷户外3-4人 双人双层 防雨露营
					野营野外速开铝杆帐篷套装</div>
				<div class="order-seller">卖家昵称：公狼旗舰店</div>
				<div class="order-amount">
					<div class="order-real-amount">
						<em class="">1151.00</em> 元 <i class="iconfont" title="刷新"> <a
							href="#" class="order-reload" seed="get_price"></a>
						</i>
					</div>
				</div>
				<a id="J_OrderExtTrigger" class="order-ext-trigger" href="#"
					seed="order-detail-more"> <i class="iconfont" title="记录"></i>
					订单详情
				</a>
				<p id="J_OrderExtLoading" class="order-ext-loading fn-hide">
					加载订单详情信息... <a href="#" seed="refresh-account">刷新</a>
				</p>
				<div id="J_OrderExt" class="order-ext fn-hide" data-url="#"></div>
			</div>
		</div>
	</div>


	<!-- 支付密码部分 -->
	<div id="J-payMethod" class="main-container">
	<div id="J-security" class="">
		<input type="hidden" name="securityId" id="securityId">
		<div class="ui-securitycore ui-securitycore-tip J-securitycoreTip "
			data-link-in-xbox="">
			<div class="ui-form-item ui-form-item-success">
				<div class="ui-form-explain">安全设置检测成功！无需短信校验。</div>
				<div class="J-checkResult fn-hide" data-status="">安全设置检测成功！无需短信校验。</div>
			</div>
		</div>
		<div class="ui-securitycore J-securitycoreMain">
			<input style="display:none" seed="JSecuritycoreMain-ipt"
				smartracker="on"> <input type="password"
				style="display:none" seed="JSecuritycoreMain-iptT1" smartracker="on">
			<style type="text/css">
				.edit-section .edit-link a {
					line-height: 24px;
				}
			</style>
			<div class="edit-section">
				<div class="ui-form-item">
					<label class="ui-label" for="payPassword"> 支付宝支付密码： </label> <span
						class="standardPwdContainer" style="display:none"> <input
						type="password" tabindex="1" id="payPassword_input"
						name="payPassword_input" class="ui-input"
						oncontextmenu="return false" onpaste="return false"
						oncopy="return false" oncut="return false" autocomplete="off"
						seed="standardPwdContainer-payPassword_input" smartracker="on">
					</span> <span class="alieditContainer" id="payPassword_container"><input
						type="password" tabindex="1" id="payPassword_rsainput"
						name="payPassword_rsainput"
						class="ui-input i-text sixDigitPassword"
						oncontextmenu="return false" onpaste="return false"
						oncopy="return false" oncut="return false" autocomplete="off"
						value="" maxlength="6" minlength="6"
						style="outline: none; margin-left: -999px;">
					<div class="sixDigitPassword" tabindex="0" style="width: 180px;">
							<i class="" style="width: 29px; border-color: transparent;"><b
								style="visibility: hidden;"></b></i><i style="width: 29px;"><b
								style="visibility: hidden;"></b></i><i style="width: 29px;"><b
								style="visibility: hidden;"></b></i><i style="width: 29px;"><b
								style="visibility: hidden;"></b></i><i style="width: 29px;"><b
								style="visibility: hidden;"></b></i><i style="width: 29px;"><b
								style="visibility: hidden;"></b></i><span
								style="width: 29px; visibility: hidden; left: 0px;"></span>
						</div></span> <span class="ui-form-other edit-link"> <a target="_blank"
						href="https://lab.alipay.com/user/passwordfind/index.htm?type=P"
						seed="sc_edit_forgetPwd">忘记密码？</a>
					</span>
					<div class="ui-form-explain">
						<p id="J_edit_prompt_default" class="">
							<!-- CMS:安全核心/安全服务化收银台/未安装控件开始:securitycore/cashier/editPrompt.vm -->
							请输入6位数字支付密码
						</p>
						<p id="J_edit_prompt_noEdit" class="fn-hide">
							<!-- CMS:安全核心/安全服务化收银台/默认的密码控件下方的提示信息开始:securitycore/cashier/editPromptNoEdit.vm -->
							密码控件无法安装？可使用 <a href="javascript:void(0)"
								class="J-cross-to-mobile" seed="cross-to-mobile-in-cert-tip">穿越到手机上付款</a>
						</p>
					</div>

					<input type="hidden" name="J_aliedit_using" value="true"> <input
						type="hidden" id="payPassword" name="payPassword" value="">
					<input type="hidden" name="J_aliedit_key_hidn" value="payPassword">
					<input type="hidden" name="J_aliedit_uid_hidn" value="alieditUid">
					<input type="hidden" id="alieditUid" name="alieditUid"
						value="9cf43d0bbc789b8337c1626e31b39139"> <input
						type="hidden" name="REMOTE_PCID_NAME" value="_seaside_gogo_pcid">
					<input type="hidden" name="_seaside_gogo_pcid" value=""> <input
						type="hidden" name="_seaside_gogo_" value=""> <input
						type="hidden" name="_seaside_gogo_p" value=""> <input
						type="hidden" name="J_aliedit_prod_type" value="payment_password">
					<input type="hidden" name="security_activeX_enabled" value="false">
					<input type="hidden" name="J_aliedit_net_info" value=""> <input
						type="hidden" id="edit_infor" value="" render="R">
				</div>
			</div>

	<style type="text/css">
input.sixDigitPassword {
	position: absolute;
	color: #fff;
	opacity: 0;
	width: 1px;
	height: 1px;
	font-size: 1px;
	left: 0;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	-webkit-user-select: initial; /* 取消禁用选择页面元素 */
	outline: 'none';
	margin-left: '-9999px';
}

div.sixDigitPassword {
	cursor: text;
	background: #fff;
	outline: none;
	position: relative;
	padding: 8px 0;
	height: 14px;
	border: 1px solid #cccccc;
	border-radius: 2px;
}

div.sixDigitPassword i {
	float: left;
	display: block;
	padding: 4px 0;
	height: 7px;
	border-left: 1px solid #cccccc;
}

div.sixDigitPassword i.active {
	background-image:
		url("https://t.alipayobjects.com/images/rmsweb/T1nYJhXalXXXXXXXXX.gif");
	background-repeat: no-repeat;
	background-position: center center;
}

div.sixDigitPassword b {
	display: block;
	margin: 0 auto;
	width: 7px;
	height: 7px;
	overflow: hidden;
	visibility: hidden;
	background-image:
		url("https://t.alipayobjects.com/tfscom/T1sl0fXcBnXXXXXXXX.png");
}

div.sixDigitPassword span {
	position: absolute;
	display: block;
	left: 0px;
	top: -1px;
	height: 30px;
	border: 1px solid rgba(82, 168, 236, .8);
	border: 1px solid #00ffff\9;
	border-radius: 2px;
	visibility: hidden;
	-webkit-box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 0.75), 0 0 8px
		rgba(82, 168, 236, 0.6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px
		rgba(82, 168, 236, 0.6);
}

.ui-securitycore .ui-form-item-loading .ui-form-explain {
	background:
		url(https://t.alipayobjects.com/tfscom/T1hBFfXnRnXXXXXXXX.gif) 0 4px
		no-repeat !important;
}

.ui-securitycore .ui-form-item-error .ui-form-explain,.ui-securitycore .ui-form-item-warn .ui-form-explain,.ui-securitycore .ui-form-item-success .ui-form-explain,.ui-securitycore .ui-form-item-success .ui-form-text,.ui-securitycore-tip .ui-form-explain
	{
	background-image:
		url( https://t.alipayobjects.com/tfscom/T1dmlfXc0dXXXXXXXX.png)
		!important;
}

.ui-securitycore .ui-form-item .ui-form-explain {
	margin-top: 8px;
}
</style>
		</div>
</div>
	<!-- 确定支付 -->
	<div id="J-rcSubmit">
	    <div class="ui-fm-item ui-fm-action j-submit" data-reactid=".1">
	    <form action="pay.do?method=pay" method="post">
	    		<input class="ui-button ui-button-lblue" id="J_authSubmit" type="submit" value="确认付款" data-reactid=".1.1" seed="jSubmit-J_authSubmit" smartracker="on">
	    </form>
		<span class="ui-fm-status fn-hide" data-reactid=".1.2"> 正在提交中... </span>
		</div>
	</div>
	</div>
		<!-- 底部 -->
		<div id="footer">
			<div class="copyright">
				<a href="https://fun.alipay.com/certificate/jyxkz.htm"
					target="_blank" seed="copyright-link" smartracker="on">ICP证：沪B2-20150087</a>
			</div>
			<div class="server" id="ServerNum">antcashiercloud-49-8395
				&nbsp; 8c8ccd9e-0f79-4352-8f11-c9dbf130906a</div>
		</div>

		<!-- 商标部分 -->
		<div id="partner">
			<img src="image/partner.png"
				seed="partner-zosRmsportalIASErdnJnLbiMvSoxkaQ" smartracker="on">
		</div>
</body>
</html>