<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form action="delroomtype.do" method="post" name="form1" target="main" id="form1" onsubmit="return CheckForm()">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;管理员管理 &gt;&gt;&nbsp;房间类型</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th width="10%" height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">类型名称</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">价格（每天）</th>
          <th width="100" colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index+1}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.typename}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.price}</td>
          <td height="27" align="right" valign="middle"  width="4%">
            <a href="addroomtype.jsp?id=${item.id}"><img src="../images/edit.gif" alt="修改栏目内容" height="16" border="0" style="cursor:hand" widtd="16"/></a>
          </td>
          <td height="27" align="left" valign="middle" width="4%"><input name="list" type="checkbox" id="list" value="${item.id}" /></td>
        </tr>
        </c:forEach>
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <a href="addroomtype.jsp"><img src="../images/tjjl.gif" width="78" height="27" border="0" /></a>&nbsp;<img src="../images/fanxuan.gif" width="79" height="27"  class="shouxing" onclick="check()"/>&nbsp;<img src="../images/quanxuan.gif" width="79" height="27" class="shouxing" onclick="checkall()"/>&nbsp;&nbsp;
            <input type="image" src="../images/shanchu.gif" width="79" height="27" border="0" onclick="javascript:if(!confirm('你确定要删除选定的数据吗？'))return false;" />
            &nbsp; <img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:history.back(-1)"/>
		  </td>
        </tr>
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