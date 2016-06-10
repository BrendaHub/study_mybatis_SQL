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
function checkname(obj)
{
    if(obj.title.value.length==0)
	{
	    alert("查询公告标题不能为空！");
		return false;
	}
}
</script>
</head>

<body>
<table width="98%" border="0">
  <form name="form2" action="newslist.do" method="post" onsubmit="return checkname(this)">
  <tr>
    <td width="4"></td>
    <td height="25" align="left"  style="border-bottom: dashed 1px">
      输入标题：<input type="text" name="title" value="" size="20" maxlength="50" />
      <input type="submit" value="查询" class="btn_1" />  
    </td>
  </tr>
  </form>
</table>

<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;顾客管理 &gt;&gt;&nbsp;公告信息列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">标题</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">发布者</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">发布时间</th>
          <th width="100" colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${12*(Pageno-1) + s.index + 1}</td>
          <c:if test="${item.hot=='1'}">
            <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.title} <img src="../images/hot.gif" border="0"/></td>
          </c:if>
          <c:if test="${item.hot=='0'}">
            <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.title}</td>
          </c:if>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.author}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${fn:substring(item.sendtime,0,10)}</td>
          <td height="27" align="center" valign="middle" width="4%"><a href="shownews.do?id=${item.id}">查 看</a></td>
        </tr>
        </c:forEach>
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <table width="100%">
              <tr>
                <td align="left" width="50%">[<c:out value="${Pageno}"/>/<c:out value="${Totalpage}" />页][共<c:out value="${Totalcount}"/>条记录 每页12条]</td>
	            <td align="right" width="50%">
	            <c:if test="${Pagescoll!=0&&Pagescoll!=1}">
	              <a href="newslist.do?Page=1">首页</a>
                  <a href="newslist.do?Page=${Pageno-1}">上一页</a>
	            </c:if>
	            <c:if test="${Pagescoll!=0&&Pagescoll!=3}">
	              <a href="newslist.do?Page=${Pageno+1}">下一页</a>
                  <a href="newslist.do?Page=${Totalpage}">尾页</a>
	            </c:if>
	            选择页数：
	            <select onchange='javascript:window.location="newslist.do?Page=" + this.value;'>
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