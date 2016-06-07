<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>mybatis标签学习</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet" href="<%= basePath%>resources/css/mybatis.css"/>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-rc1/jquery.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid _bgStyle">
			<div class="span12">
				 <button class="btn btn-large btn-info" type="button" id="selectlabel">Select标签</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-success" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
				 <button class="btn btn-large btn-info" type="button">按钮</button>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span12 contentlabel">
				<dl>
					<dt>
						Rolex
					</dt>
					<dd>
						劳力士创始人为汉斯.威尔斯多夫，1908年他在瑞士将劳力士注册为商标。
					</dd>
					<dt>
						Vacheron Constantin
					</dt>
					<dd>
						始创于1775年的江诗丹顿已有250年历史，
					</dd>
					<dd>
						是世界上历史最悠久、延续时间最长的名表之一。
					</dd>
					<dt>
						IWC
					</dt>
					<dd>
						创立于1868年的万国表有“机械表专家”之称。
					</dd>
					<dt>
						Cartier
					</dt>
					<dd>
						卡地亚拥有150多年历史，是法国珠宝金银首饰的制造名家。
					</dd>
				</dl>
			</div>
		</div>
	</div>
</body>
<script>
	//定义SQL全局变量
	var selectlabel = "<select id=\"selectPerson\" parameterType=\"int\" resultType=\"hashmap\"> \n" + 
	  				"SELECT * FROM PERSON WHERE ID = #{id} \n" + 
					"</select>";
	$(function(){
		//在按钮上添加click事件属性
		$("#selectlabel").click(function(){
			$(".contentlabel").empty();
			$(".contentlabel").text(selectlabel);
			
		});	
	});
</script>
</html>