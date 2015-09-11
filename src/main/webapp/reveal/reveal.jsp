<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Reveal Demo</title>
		
		<!-- Attach our CSS -->
	  	<link rel="stylesheet" href="<%=basePath%>js/reveal/reveal.css">	
	  	<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/reveal/jquery.reveal.js"></script>
		
		<!-- Attach necessary scripts -->
		<!-- <script type="text/javascript" src="jquery-1.4.4.min.js"></script> -->
		
		<style type="text/css">
			body { font-family: "HelveticaNeue","Helvetica-Neue", "Helvetica", "Arial", sans-serif; }
			.big-link { display:block; margin-top: 100px; text-align: center; font-size: 70px; color: #06f; }
		</style>
  </head>
  
  <body>
   	<a href="#" class="big-link" data-reveal-id="myModal">
			动画并从顶部滑落
		</a>	
		
		<a href="#" class="big-link" data-reveal-id="myModal" data-animation="fade">
			动画效果
		</a>
		
		<a href="#" class="big-link" data-reveal-id="myModal" data-animation="none">
			None
		</a>

		<a href="#" class="big-link" data-animation="none" onclick="testCallBack()">
			关闭前带有预处理函数的测试
		</a>
		
		<div id="myModal" class="reveal-modal">
			<h1>Reveal Modal Goodness</h1>
			<p>This is a default modal in all its glory, but any of the styles here can easily be changed in the CSS.</p>
			<a class="close-reveal-modal">&#215;</a>
		</div>
  </body>
</html>
<script>
	function testCallBack()
	{
		$('#myModal').reveal(
		{
			  	animation:"none", 
			  	closeonbackgroundclick:false,
			  	preClose:function()
				{
					alert(1);
				}
		});
	}
</script>