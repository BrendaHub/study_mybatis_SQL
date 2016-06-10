<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
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
<script language="javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
<html:javascript formName="tongjiForm" method="check" dynamicJavascript="true"/>
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
<html:form action="admin/tongji" method="post" onsubmit="return check(this)">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">选择条件</span></span></legend>
		<table width="98%" height="" align="left" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >
              &nbsp;选择时间：
              <html:text property="date1" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})" /> 至 <html:text property="date2" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})" />
            </td>
            <td align="left">房间号：<html:text property="roomId" size="10" maxlength="20" /></td>
            <td align="left">房间类型：
              <html:select property="typeId">
		        <html:optionsCollection property="typeInfo" label="typename" value="id"/>
		      </html:select>
            </td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >
              &nbsp;选择方式：
              按房间号<html:radio property="type" value="0" />
              按房间类型<html:radio property="type" value="1" />  
              <html:submit value="统  计" styleClass="btn_1" onmouseover="this.className='btn_3';" onmouseout="this.className='btn_1';" />
            </td>
          </tr>
	    </table>
	  </fieldset>
	</td>
  </tr>
</table>
</html:form>
<c:if test="${list1==null&&list2==null||list1!=null}">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;酒店管理 &gt;&gt;&nbsp;财务统计</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间类型</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">楼层</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">订房次数</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">总金额</th>
        </tr>
        <c:set var="p1" value="0" />
        <c:set var="p2" value="0" />
        <c:forEach var="item" items="${list1}" varStatus="s">
        <c:set var="p1" value="${item.num+p1}" />
        <c:set var="p2" value="${item.price+p2}" />
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.roomId}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.typename}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.floor}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.num}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.price}</td>
        </tr>
        </c:forEach>
        <tr class="line_bottom" bgcolor='#FFFFFF'>
          <td align="right" valign="middle"  class="line_bottom" scope="row" colspan="4">总计：</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p2}</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2">&nbsp;</td>
  </tr>
</table>
</c:if>

<c:if test="${list2!=null}">
<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;酒店管理 &gt;&gt;&nbsp;财务统计</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间类型</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">房间数</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">总金额</th>
        </tr>
        <c:set var="p2" value="0" />
        <c:forEach var="item" items="${list1}" varStatus="s">
        <c:set var="p2" value="${item.price+p2}" />
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.typename}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.num}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.price}</td>
        </tr>
        </c:forEach>
        <tr class="line_bottom" bgcolor='#FFFFFF'>
          <td align="right" valign="middle"  class="line_bottom" scope="row" colspan="3">总计：</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p2}</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2">&nbsp;</td>
  </tr>
</table>
</c:if>

</body>
</html>