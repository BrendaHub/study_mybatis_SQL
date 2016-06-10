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
<html:javascript formName="jijinForm" method="check" dynamicJavascript="true"/>
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
<html:form action="query/jijinquery" method="post" onsubmit="return check(this)">
<table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">查询条件</span></span></legend>
		<table width="98%" height="" align="left" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >
              &nbsp;查询时间：
              <html:text property="date1" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy',readOnly:true})" />
              <html:submit value="查　询" styleClass="btn_1" onmouseover="this.className='btn_3';" onmouseout="this.className='btn_1';" />
            </td>
          </tr>
	    </table>
	  </fieldset>
	</td>
  </tr>
</table>
</html:form>

<table width="98%" border="0">
  <tr>
    <td width="4">&nbsp;</td>
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;公积金查询 &gt;&gt;&nbsp;${emp.name} 职工公积金信息列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">时间</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">住房公积金</th>
        </tr>
        <c:set var="p1" value="0" />
        <c:set var="p2" value="0" />
        <c:set var="p3" value="0" />
        <c:forEach var="item" items="${list}" varStatus="s">
        <c:set var="p1" value="${item.dp3+p1}" />
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${fn:substring(item.pdate,0,7)}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.dp3}</td>
        </tr>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td align="right" valign="middle"  class="line_bottom" scope="row" colspan="2">总计：</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p1}</td>
        </tr>
        </c:forEach>
      </table>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2">&nbsp;</td>
  </tr>
</table>

</body>
</html>