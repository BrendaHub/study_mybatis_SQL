<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #ECE8E9;
	font-family: "宋体";
	font-size: 12px;
	color: #339933;
}

-->
</style>
<script language="javascript">
onload = function setlogintime()
{
    var mydate = new Date();
	document.getElementById("logintime").innerHTML = mydate.toLocaleString();
}
</script>
</head>

<body>
<table width="100%" height="30" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
   <td  colspan="2" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;">&nbsp;</td>
   <td width="118" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;">当前用户：<c:if test="${user.type=='admin'}">${user.adminId}</c:if><c:if test="${user.type=='client'}">${user.clientId}</c:if></td>
  
   <td width="149" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;">管理权限：<c:if test="${user.type=='admin'&&user.pop=='1'}">超级管理员</c:if><c:if test="${user.type=='admin'&&user.pop=='0'}">普通管理员</c:if><c:if test="${user.type=='client'}">顾客</c:if></td>
   <td width="265" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;">登陆时间：<span id="logintime"></span></td>
   <!--  <td width="139" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;">登陆次数：次</td> -->
   <td width="200" align="left" bgcolor="#006699"  style="color:#FFFFFF;line-height:150%; font-family:'宋体'; font-size:12px;"></td>
  </tr>
</table>
</body>
</html>