<%@ page contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>前台页面</title>
<script src="<%= basePath %>resources/js/common/jquery-1.8.0.min.js" type="text/javascript"></script>

</head>
<body>
	<input type="hidden" value="<%= basePath %>" id="basePath"/>
	<input type="text" name="search" id="search" value=""/>
	<input type="button" name="" value="提交" id="askbut"/>
	<br/>
	<div style="margin-top:5px;">
	回答：
	<textarea rows="5" cols="30"></textarea>
	</div>
</body>
<script>
	$(function(){
		$("#askbut").click(function(){
			$.ajax({
				type:"GET",
				utl:$("#basePath").val() + "askpage.action",
				data:{},
				dataType:"json",
				success:function(data){
					alert("backcall = " + data);
// 					$("resText").empty();
// 					var html = '';
// 					$.each(data, function(commentIndex, comment){
// 						html += commentIndex + "  内容： " + comment;
// 						$("resText").innerHtml = html;
// 					});
				}
			});
		});
	});
</script>
</html>