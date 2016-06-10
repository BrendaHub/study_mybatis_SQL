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
<script src="../js/timeseting.js" language="javascript" /></script>
</head>

<body>
<div style="height:80px;">&nbsp;</div>
<div align="center">
	<div class="error">
		${msg}<br />
		<a href="${mlink}">若系统无法在 <span style='color:red;font-weight:bold' id="oTime"></span> 秒后自动跳转，请手动点击</a>
	</div>
</div>
<script type="text/javascript">
setTimeout("window.location.href='${mlink}'",3000);
</script>
<br /><br />
</body>
</html>