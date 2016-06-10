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
<html:form action="query/tongji" method="post" onsubmit="return check(this)">
<table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">查询条件</span></span></legend>
		<table width="98%" height="" align="left" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >
              &nbsp;查询时间：
              <html:text property="date1" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM',readOnly:true})" /> 至 <html:text property="date2" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM',readOnly:true})" />
            </td>
            <td align="left">职工编号：<html:text property="empId" size="20" maxlength="20" /></td>
            <td align="left"><html:submit value="查　询" styleClass="btn_1" onmouseover="this.className='btn_3';" onmouseout="this.className='btn_1';" /></td>
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
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;工资管理 &gt;&gt;&nbsp;职工工资统计</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">时间</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">岗位工资</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">薪级工资</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">奖金</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">市职务补贴</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">保留津贴</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">洗理费</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">书报费</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">独生子女托补费</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">专家津贴</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">教护津贴</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">提租补贴</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">应发总工资</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">个人所得税</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">失业保险金</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">养老保险金</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">住房公积金</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">代扣总计</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">实发工资</th>
        </tr>
        <c:set var="p1" value="0" />
        <c:set var="p2" value="0" />
        <c:set var="p3" value="0" />
        <c:set var="p4" value="0" />
        <c:forEach var="item" items="${list1}" varStatus="s">
        <c:set var="p1" value="${item.totalprice1+p1}" />
        <c:set var="p2" value="${item.totalprice2+p2}" />
        <c:set var="p3" value="${item.totalprice3+p3}" />
        <c:set var="p4" value="${item.dp3+p4}" />
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${fn:substring(item.pdate,0,7)}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.gprice}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.xprice}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.jprice}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp2}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp3}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp4}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp5}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp6}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp7}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.bp8}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.totalprice1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.tp}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.dp1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.dp2}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.dp3}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.totalprice2}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.totalprice3}</td>
        </tr>
        </c:forEach>
        <tr class="line_bottom" bgcolor='#FFFFFF'>
          <td align="right" valign="middle"  class="line_bottom" scope="row" colspan="13">总计：</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row" colspan="3">&nbsp;</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p4}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p2}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p3}</td>
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
    <td height="25" align="left"  style="border-bottom: dashed 1px"><img src="../images/dot_process.gif" width="7" height="7" />&nbsp;工资管理 &gt;&gt;&nbsp;${emp.name} 职工工资信息列表</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="top"  style="line-height:150%">
      <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#B1C3D9" id=table1 style="margin-top:5px;">
        <tr class="line_bottom">
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">序号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">职工编号</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">姓名</th>
          <th height="31" align="center" valign="middle" bgcolor="#FFFFFF" class="line_bottom">工资总额</th>
        </tr>
        <c:set var="p1" value="0" />
        <c:forEach var="item" items="${list2}" varStatus="s">
        <c:set var="p1" value="${item.price+p1}" />
        <c:set var="colors" value="#E9FBFC" />
        <c:if test="${s.index%2==0}"><c:set var="colors" value="#ffffff" /></c:if>
        <tr class="line_bottom" bgcolor='${colors}'>
          <td height="27" align="center" valign="middle"  class="line_bottom" scope="row">${s.index + 1}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.empId}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.name}</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${item.price}</td>
        </tr>
        </c:forEach>
        <tr class="line_bottom" bgcolor='#FFFFFF'>
          <td align="right" valign="middle"  class="line_bottom" scope="row" colspan="3">总计：</td>
          <td align="center" valign="middle"  class="line_bottom" scope="row">${p1}</td>
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