<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>查看图片</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="css/niutuku.css" type="text/css" rel="stylesheet">	
<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/niutuku.base.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY >
<div id=preview>
	<div class=jqzoom id=spec-n1 onClick="window.open('http://www.360buy.com/bigimage.aspx?id=207352')"><IMG height=350 src="images/img04.jpg" width=350>
	</div>
	<div id=spec-n5>
		<div class=control id=spec-left>
			<img src="images/left.gif" />
		</div>
		<div id=spec-list>
			<ul class=list-h>
				<li><img src="images/img01.jpg"> </li>
				<li><img src="images/img02.jpg"> </li>
				<li><img src="images/img03.jpg"> </li>
				<li><img src="images/img04.jpg"> </li>
				<li><img src="images/img01.jpg"> </li>
				<li><img src="images/img02.jpg"> </li>
				<li><img src="images/img03.jpg"> </li>
				<li><img src="images/img04.jpg"> </li>
				<li><img src="images/img01.jpg"> </li>
				<li><img src="images/img02.jpg"> </li>
				<li><img src="images/img03.jpg"> </li>
				<li><img src="images/img04.jpg"> </li>
			</ul>
		</div>
		<div class=control id=spec-right>
			<img src="images/right.gif" />
		</div>
		
    </div>
</div>
<SCRIPT type=text/javascript>
	$(function(){			
	   $(".jqzoom").jqueryzoom({
			xzoom:400,
			yzoom:400,
			offset:10,
			position:"right",
			preload:1,
			lens:1
		});
		$("#spec-list").jdMarquee({
			deriction:"left",
			width:350,
			height:56,
			step:2,
			speed:4,
			delay:10,
			control:true,
			_front:"#spec-right",
			_back:"#spec-left"
		});
		$("#spec-list img").bind("mouseover",function(){
			var src=$(this).attr("src");
			$("#spec-n1 img").eq(0).attr({
				src:src.replace("\/n5\/","\/n1\/"),
				jqimg:src.replace("\/n5\/","\/n0\/")
			});
			$(this).css({
				"border":"2px solid #ff6600",
				"padding":"1px"
			});
		}).bind("mouseout",function(){
			$(this).css({
				"border":"1px solid #ccc",
				"padding":"2px"
			});
		});				
	})
	</SCRIPT>





<SCRIPT src="js/niutuku.lib.js" type=text/javascript></SCRIPT>

<SCRIPT src="js/niutuku.js" type=text/javascript></SCRIPT>

</BODY>
</HTML>
