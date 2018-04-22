<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>阿里巴巴集团 | 账户中心</title>

<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="css/ucenter.css"/>

<link rel="stylesheet" href="css/jquery.slider.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.slider.min.js"></script>
</head>
<body>
<div id="header">
	<div class="header-layout">
       <h1 class="logo" id="logo"><a href="http://www.taobao.com">淘宝</a></h1>
       <h2 class="logo-title"> 找回密码 </h2>
       <ul class="header-nav">
		    <li class="nav-first"><a href="${pageContext.request.contextPath }/register.jsp" target="_blank"> 注册 </a></li>
			<li><a href="${pageContext.request.contextPath }/login.jsp" target="_blank"> 登录 </a></li>
			<li><a href="http://i.taobao.com/my_taobao.htm" target="_blank"> 我的 淘宝</a></li>
			<li><a href="http://service.taobao.com/support/main/service_center.htm" target="_blank">  </a></li>
	   </ul>
   </div>
</div>

<div id="content">
        <div class="content-layout">
            <div class="maincenter">
                <div class="maincenter-box">
                    <div class="maincenter-box-tip">
                        <p class="ui-tiptext ui-tiptext-message ft-14">
                            <i class="ui-tiptext-icon iconfont" title=" 提示 "></i>
                             请输入你需要找回登录密码的账户名 
                        </p>
                    </div>
<form class="ui-form" id="J_Form" method="post" action="${pageContext.request.contextPath }/pass.do?method=findbyusername">
      <div class="ui-form-item">
        <label class="ui-label"> 登录名: </label>
        <input id="J-accName" name="username" class="ui-input" placeholder=" 手机/邮箱/会员名 " value="" data-explain="" data-widget-cid="widget-1" type="text">
                       <span class="ui-form-other"> 忘记会员名？可使用邮箱 </span>
            			    </div>

	<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden">
		<img src="img/clear.png">  
	</div>

		<div class="ui-form-item">
			<label class="ui-label"> 验证: </label>
	       	<div class="container">
		       	 <div class="demo2">
		       	     <div id="slider2" class="slider"></div>
		       	 </div>
	       	</div>
       	
		</div>
		<div class="ui-form-item ui-form-item-last">
		    <input value=" 确定 " class="ui-button ui-button-lorange" id="submitBtn"  type="submit">
		</div>
		<input type="text" class="none" name="result" style="display: none;"/>
</form>
                </div>
			</div>
        </div>
    </div>
    <div id="footer">
	<div class="footer-layout">
	    <div class="copyright">
			 阿里巴巴版权所有 1999-2017 	    </div>
  	</div>
</div>
    
    
    <script> 
// 	$("#slider1").slider({
// 		callback: function(result) {
// 			$("#result1").text(result);
// 		}
// 	});

	$("#slider2").slider({
		width: 300, // width
		height: 34, // height
		sliderBg: "rgb(134, 134, 131)", // 滑块背景颜色
		color: "#fff", // 文字颜色
		fontSize: 14, // 文字大小
		bgColor: "#33CC00", // 背景颜色
		textMsg: "请按住滑块，拖动到最右边", // 提示文字
		successMsg: "验证通过", // 验证成功提示文字
		successColor: "red", // 滑块验证成功提示文字颜色
		time: 400, // 返回时间
		callback: function(result) { // 回调函数，true(成功),false(失败)
			$("#result2").text(result);
 			alert(result);
// 			$(".none").val(result); 
			var request=new XMLHttpRequest();
			 request.open("post", "${pageContext.request.contextPath}/but.do?result="+result,true);
             request.send(); 
		}
	});
	// 还原
// 	$("#reset1").click(function() {
// 		$("#slider1").slider("restore");
// 	});

 // 	$("#reset2").click(function() {
// 		$("#slider2").slider("restore");
// 	}); 
</script>
</body>
</html>