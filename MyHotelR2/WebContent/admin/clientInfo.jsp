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
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">顾客信息</span></span></legend>
		<table width="98%" height="" align="center" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="10%" height="25" align="left" >&nbsp;帐号：</td>
            <td height="25">
              <c:if test="${type=='1'}">${client.clientId}</c:if>
            </td>
			<td width="10%" height="25" align="left" >&nbsp;姓名：</td>	
            <td height="25">${client.name}</td>
            <td width="10%" height="25" align="left" >&nbsp;性别：</td>	
            <td height="25">${client.sex}</td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;出生日期：</td>	
            <td height="25">${fn:substring(client.birth,0,10)}</td>
			<td height="25" align="left" >&nbsp;身份证号：</td>	
            <td height="25">${client.cardno}</td>
			<td height="25" align="left" >&nbsp;联系电话：</td>	
            <td height="25">${client.tel}</td>
          </tr>
		  <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
			<td height="25" align="left" >&nbsp;联系地址：</td>	
            <td height="25" colspan="5">${client.address}</td>
          </tr>
		  <tr>
			<td align="right" valign="top" nowrap>&nbsp;</td>
			<td align="left" colspan="5">
			  &nbsp; <img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:history.back(-1)"/>
            </td>
		  </tr>
	    </table>
	  </fieldset>
	</td>
  </tr>
  <tr>
    <td height="32" align="right" valign="top" style="padding-left:10px;padding-right:10px;"></td>
  </tr>
</table>
</body>
</html>