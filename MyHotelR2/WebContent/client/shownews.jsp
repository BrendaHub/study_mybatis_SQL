<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title></title>
<style type="text/css">
<!--
body  table{
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
-->
</style>
<link href="../lyoa.css" rel="stylesheet" type="text/css" />
<script language=javascript src="../js/function.js"></script>
<style type="text/css">
<!--
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #333333;
}
a:hover {
	text-decoration: none;
	color: #009900;
}
a:active {
	text-decoration: none;
}
-->
</style>
</head>

<body>
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;公告信息  <input type="button" value="返回" class="btn_1" onclick="javascript:window.location='newslist.do'" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
		<tr>
		  <td width="100%" height="410" valign="top" colspan="3">
		    <table align="center" width="90%" border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td height="40" align="center" style="font-size:22px;font-weight:bold">${news.title}</td>
			  </tr>
			  <tr>
				<td align="center">发布者：${news.author}　发布时间：${fn:substring(news.sendtime,0,10)}</td>
			  </tr>
			  <tr>
				<td align="left" valign="top" height="400" style="padding-top:3px; padding-left:3px; padding-right:3px;">${news.content}</td>
			  </tr>
			  <tr>
			    <td background="images/3x1.gif"><img src="images/3x1.gif" width="1" height="1" /></td>
			  </tr>
			</table>
		  </td>
		</tr>
	  </table>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2">&nbsp;</td>
  </tr>
</table>
</body>
</html>