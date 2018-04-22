<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <title>支付成功页面</title>
     <style type="text/css">
      #pay{ 
         border-radius:20px;
         width: 200px;
         height: 48px;
         background-color: #43bc46;
         margin-left: 600px;
         margin-top: 300px;
         
      }
       #paysucc{
          height: 48px;
          text-align:center;
       }
     </style>
  </head>
  
  <body>
	  <div id="pay">
	     <h1 id="paysucc">支付成功</h1>
	  </div>
  </body>
</html>
