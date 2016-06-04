<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学习MyBatis页面</title>
<script src="<%= basePath %>resources/js/common/jquery-1.8.0.min.js" type="text/javascript"></script>
</head>
<body>
	<input type="hidden" value="<%= basePath %>" id="basePath"/>
	<input type="text" name="search" id="search" value=""/>
	<input type="button" name="" value="新 增" id="askbut"/>
	<br/>
	<div style="margin-top:5px;">
	新 增：
	<textarea rows="5" cols="30"></textarea>
	</div>
</body> 
<script>
	$(function(){
		$("#askbut").click(function(){
			$.ajax(
			{
				type:"GET",
				url:$("#basePath").val() + "askpage.action",
				data:"json",
				success:function(date){
					alert(date[0].command);
				}
			}		
			);
		});
	});
	
</script>
</html>