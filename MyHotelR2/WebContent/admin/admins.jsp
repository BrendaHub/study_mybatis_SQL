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
<script language=javascript>
function check()
{//反选
    for(var i=0;i<document.form1.list.length;i++)
    {
        if (document.form1.list[i].checked==false)
        {
            if(document.form1.list[i].value!='')
                document.form1.list[i].checked=true;
        }
        else
        {
            document.form1.list[i].checked=false;
        }
    }
    if(document.form1.list.length==undefined)
    {
        if(document.form1.list.checked==false)
        {
            if(document.form1.list.value!='')
                document.form1.list.checked=true;
        }
        else
        {
            document.form1.list.checked=false;
        }
    }
} 

function checkall()
{//全选

    for(var i=0;i<document.form1.list.length;i++)
    {
        if(document.form1.list[i].checked==false)
        {
            if(document.form1.list[i].value!='')
                document.form1.list[i].checked=true;
        }
    }
    if(document.form1.list.length==undefined)
    {
        if(document.form1.list.value!='')
            document.form1.list.checked=true;
    }
}
function CheckForm()
{
    if(document.form1.list.length==undefined)
    {
        if(document.form1.list.checked==false){
        alert("你还没有选择要删除的项！");
        return false;}
    }
    else
    {
        var index = 0;
        for (var i=0;i<document.form1.list.length;i++)
        {
            if(document.form1.list[i].checked==true)
            {
                index++;
                break;
            }
        }
        if(index==0)
        {
            alert("你还没有选择要删除的项！");
            return false;
        }
    }
}
</script>
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
<form action="deladmins.do" method="post" name="form1" target="main" id="form1" onsubmit="return CheckForm()">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;管理员管理 &gt;&gt;&nbsp;管理员列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th width="150" height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th width="250" height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">帐号</th>
          <th width="270" height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">姓名</th>
          <th width="200" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">权限</th>
          <th colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">操作</th>
        </tr>
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index+1}</td>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${item.adminId}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.name}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">
            <c:if test="${item.pop=='0'}">普通管理员</c:if>
            <c:if test="${item.pop=='1'}">超级管理员</c:if>
          </td>
          <td width="108" height="27" align="right" valign="middle"  width="4%">
            <a href="addadmin.jsp?id=${item.id}">
            <c:if test="${item.adminId!='admin'}"><img src="../images/edit.gif" alt="修改栏目内容" height="16" border="0" style="cursor:hand" widtd="16"/></c:if>
            <c:if test="${item.adminId=='admin'}">&nbsp;</c:if>
            </a>
          </td>
          <td width="104" height="27" align="left" valign="middle" width="12%">
            <c:if test="${item.adminId!='admin'}"><input name="list" type="checkbox" id="list" value="${item.id}" /></c:if>
            <c:if test="${item.adminId=='admin'}"><input name="list" type="checkbox" id="list" value="" style="display:none" /></c:if>
          </td>
        </tr>
        </c:forEach>
        <tr class="line_bottom">
          <td height="26" colspan="17" align="center" valign="middle" bgcolor="#FFFFFF"  class="line_bottom" scope="row">
		    <a href="addadmin.jsp"><img src="../images/tjjl.gif" width="78" height="27" border="0" /></a>&nbsp;<img src="../images/fanxuan.gif" width="79" height="27"  class="shouxing" onclick="check()"/>&nbsp;<img src="../images/quanxuan.gif" width="79" height="27" class="shouxing" onclick="checkall()"/>&nbsp;&nbsp;
            <input type="image" src="../images/shanchu.gif" width="79" height="27" border="0" onclick="javascript:if(!confirm('你确定要删除选定的管理员吗？'))return false;" />
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