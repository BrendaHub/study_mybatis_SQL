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
<script language="javascript">
function onlyFloat(obj)
{
  obj.value = obj.value.replace(/[^\d\.]+?/g,'');
}
function onlyNum(obj)
{
  obj.value = obj.value.replace(/[^\d]/g,'');
}
function setitem(obj)
{
  if(obj.value.length==0||obj.value=='0')
      obj.value = 1;
}
</script>
</head>

<body>
<form action="creatorder.do" method="post" name="form1" target="main" id="form1">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;顾客订房管理 &gt;&gt;&nbsp;订房列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间类型</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">价格（每天）</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">预订天数</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">楼层</th>
          <th align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${car}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomId}<input type="hidden" name="roomId" value="${item.id}" /></td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomtype.typename}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomtype.price}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row"><input type="text" size="14" name="datenum" value="1" onkeyup="onlyNum(this)" onblur="setitem(this)" /></td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.floor}</td>
          <td height="27" align="center" valign="middle" width="4%">
            <a href="delcar.do?id=${item.id}">删除</a>
          </td>
        </tr>
        </c:forEach>
        <c:if test="${fn:length(car)!=0}">
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <input type="submit" value="确认付款" class="btn_1"/>  
		    <input type="button" value="继续添加" class="btn_1" onclick="javascript:window.location='roomlist.do'" />
		  </td>
        </tr>
        </c:if>
      </table>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>