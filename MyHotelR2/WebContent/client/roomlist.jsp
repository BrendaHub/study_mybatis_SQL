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
<script language="javascript">
function queryitem()
{
    var type = document.getElementById("type").value;
    var key = document.getElementById("key").value;
    window.location = "roomlist.do?type="+type+"&key="+key;
}
function setitem(v1,v2)
{
    if(v1.length!=0)
        document.getElementById("type").value = v1;
    if(v2.length!=0)
        document.getElementById("key").value = v2;
}
</script>
</head>

<body onload="setitem('${type}','${key}')">
<table width="98%" border="0">
  <tr>
    <td width="4"></td>
    <td height="25" align="left"  style="border-bottom: dashed 1px">
      房间类型：
      <select name="type" id="type" onchange="queryitem()">
        <option value="">全部</option>
        <c:forEach var="item" items="${typelist}">
        <option value="${item.id}">${item.typename}</option>
        </c:forEach>
      </select>  
      是否占用：
      <select name="key" id="key" onchange="queryitem()">
        <option value="">全部</option>
        <option value="1">已占用</option>
        <option value="0">未占用</option>
      </select>  
    </td>
  </tr>
</table>
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;订房管理 &gt;&gt;&nbsp;房间信息列表</td>
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
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">楼层</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">是否占用</th>
          <th align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${12*(Pageno-1) + s.index + 1}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomId}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomtype.typename}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.roomtype.price}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.floor}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">
            <c:if test="${item.isused=='1'}">是</c:if>
            <c:if test="${item.isused=='0'}">否</c:if>
          </td>
          <td height="27" align="center" valign="middle" width="10%">
            <c:if test="${item.isused=='1'}">&nbsp;</c:if>
            <c:if test="${item.isused=='0'}"><a href="addcar.do?id=${item.id}">加入预订列表</a></c:if>
          </td>
        </tr>
        </c:forEach>
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <table width="100%">
              <tr>
                <td align="left" width="50%">[<c:out value="${Pageno}"/>/<c:out value="${Totalpage}" />页][共<c:out value="${Totalcount}"/>条记录 每页12条]</td>
	            <td align="right" width="50%">
	            <c:if test="${Pagescoll!=0&&Pagescoll!=1}">
	              <a href="roomlist.do?Page=1&type=${type}&key=${key}">首页</a>
                  <a href="roomlist.do?Page=${Pageno-1}&type=${type}&key=${key}">上一页</a>
	            </c:if>
	            <c:if test="${Pagescoll!=0&&Pagescoll!=3}">
	              <a href="roomlist.do?Page=${Pageno+1}&type=${type}&key=${key}">下一页</a>
                  <a href="roomlist.do?Page=${Totalpage}&type=${type}&key=${key}">尾页</a>
	            </c:if>
	            选择页数：
	            <select onchange='javascript:window.location="roomlist.do?type=${type}&key=${key}&Page=" + this.value;'>
	            <c:forEach begin="1" end="${Totalpage}" varStatus="s">
	              <c:choose>
	                <c:when test="${Pageno==s.index}">
	                  <option value="${s.index}" selected>${s.index}</option>
	                </c:when>
	                <c:otherwise>
	                  <option value="${s.index}">${s.index}</option>
	                </c:otherwise>
	              </c:choose>
	            </c:forEach>
	            </select>
	            </td>
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