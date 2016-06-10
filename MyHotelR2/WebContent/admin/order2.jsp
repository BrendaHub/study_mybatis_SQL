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
    var roomId = document.getElementById("roomId").value;
    window.location = "order2.do?type="+type+"&key="+key+"&roomId="+roomId;
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
  <form name="form2" action="order1.do" method="post" onsubmit="return checkname(this)">
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
      是否退房：
      <select name="key" id="key" onchange="queryitem()">
        <option value="">全部</option>
        <option value="1">已退订</option>
        <option value="0">未退订</option>
      </select>  
      输入门房号：<input type="text" name="roomId" id="roomId" value="${roomId}" size="20" maxlength="50" />
      <input type="submit" value="查询" class="btn_1" />  
    </td>
  </tr>
  </form>
</table>
<form action="delorder2.do" method="post" name="form1" target="main" id="form1" onsubmit="return CheckForm()">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;订房管理 &gt;&gt;&nbsp;订单列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">顾客姓名</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">订房时间</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间类型</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">楼层</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">价格（每天）</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">预订天数</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">总价</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">是否退房</th>
          <th colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${12*(Pageno-1) + s.index + 1}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row"><a href="showclient.do?id=${item.id}&type=2">${item.name}</a></td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.regdate}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.room.roomId}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.room.roomtype.typename}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.room.floor}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.room.roomtype.price}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.datenum}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.room.roomtype.price * item.datenum}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">
            <c:if test="${item.isused=='0'}">否</c:if>
            <c:if test="${item.isused=='1'}">是</c:if>
          </td>
          <td height="27" align="center" valign="middle" width="4%">
            <c:if test="${item.isused=='0'}"><a href="returnorder2.do?id=${item.id}">退房</a></c:if>
            <c:if test="${item.isused=='1'}">&nbsp;</c:if>
          </td>
          <td height="27" align="left" valign="middle" width="4%"><input name="list" type="checkbox" id="list" value="${item.id}" /></td>
        </tr>
        </c:forEach>
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <table width="100%">
              <tr>
                <td align="left" width="50%">[<c:out value="${Pageno}"/>/<c:out value="${Totalpage}" />页][共<c:out value="${Totalcount}"/>条记录 每页12条]</td>
	            <td align="right" width="50%">
	            <c:if test="${Pagescoll!=0&&Pagescoll!=1}">
	              <a href="order2.do?Page=1&type=${type}&key=${key}&roomId=${roomId}">首页</a>
                  <a href="order2.do?Page=${Pageno-1}&type=${type}&key=${key}&roomId=${roomId}">上一页</a>
	            </c:if>
	            <c:if test="${Pagescoll!=0&&Pagescoll!=3}">
	              <a href="order2.do?Page=${Pageno+1}&type=${type}&key=${key}&roomId=${roomId}">下一页</a>
                  <a href="order2.do?Page=${Totalpage}&type=${type}&key=${key}&roomId=${roomId}">尾页</a>
	            </c:if>
	            选择页数：
	            <select onchange='javascript:window.location="order2.do?type=${type}&key=${key}&roomId=${roomId}&Page=" + this.value;'>
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
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <a href="addorder2.jsp"><img src="../images/tjjl.gif" width="78" height="27" border="0" /></a>&nbsp;<img src="../images/fanxuan.gif" width="79" height="27"  class="shouxing" onclick="check()"/>&nbsp;<img src="../images/quanxuan.gif" width="79" height="27" class="shouxing" onclick="checkall()"/>&nbsp;&nbsp;
            <input type="image" src="../images/shanchu.gif" width="79" height="27" border="0" onclick="javascript:if(!confirm('你确定要删除选定的记录吗？'))return false;" />
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