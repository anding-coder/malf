<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title></title>
<meta charset="utf-8">
<style>
    .txt{
    	height: 42px;
    	width: 100%;
    }
    #mm{
    	position: relative;
    	margin-top: 42px;
    	margin-left: 25px;
    }
	.txt #text1{
		position: relative;
		height: 42px;
		width: 300px;
		margin-left:18px;
	}
	#pas{
		position: relative;
		margin-left: 18px;
		margin-top: 25px;
		height: 42px;
		width: 300px;
	}
	#but{
		position: relative;
		margin-left: 18px;
		margin-top: 25px;
		height: 42px;
		width: 300px;
		font-size: 20px;
		background-color:rgba(255,0,54,.8);	
		border-bottom: none;
		border: 0;
		display: inline-block;
		overflow: hidden;
		vertical-align: middle;
		line-height: 42px;
		font-size: 16px;
		font-weight: 700;
		color: #fff;
		border-radius: 3px;
		cursor: pointer;

	}
	.wjmm{
		position: relative;
	    margin-top: 25px;
	    overflow: hidden;
        text-align: right;


	}
	.wjmm a{	
		text-decoration: none;
		color:#6c6c6c;
		font-size: 12px;
		margin-right: 15px;
		text-align: right;
	}
	.wjmm a:hover{
		color: red;
	}
</style>
</head>
<body>
	<p>
		<h3 id="mm">密码登录</h3>
	</p>
	<form method="post" action="login.do?method=findall"  target="_top">
       <div class="txt">
	       <input id="text1"  type="text" name="username" placeholder="会员名/邮箱/手机号"></input>
	   </div>
	  <input id="pas" type="password" name="password"></input>
	  <input id="but" type="submit" value="登录"/>
   </form>
  <div class="wjmm">
    <a href="#">忘记密码</a>
  	<a href="#">忘记会员名</a>
  	<a href="${pageContext.request.contextPath }/register.jsp" target="_top">免费注册</a>
  </div>
</body>
</html>