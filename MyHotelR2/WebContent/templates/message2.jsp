<%@ page language="java" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title></title>
<style type="text/css">
.f-left
{
	float:left;
	width:250px;
}
.f-right
{
	float:right;
	width:250px;
}
td
{
	color:#FFF;
}
.Bottom td
{
	font:normal 12px Tahoma,Arial;
	text-align:center;
	color:#000000;
	line-height:150%;
}
.Bottom .phpok
{
	font-weight:bold;
	color:darkred;
}
</style>
<link href="../style.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div style="height:80px;">&nbsp;</div>
<div align="center">
	<div class="error">
		${msg}<br />
		<input type="button" value="返回预订列表" class="btn_1" onclick="javascript:window.location='../client/carlist.jsp'" />  <input type="button" value="继续预订" class="btn_1" onclick="javascript:window.location='../client/roomlist.do'" />
	</div>
</div>
<br /><br />
</body>
</html>