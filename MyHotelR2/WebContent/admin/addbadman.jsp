<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
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
<html:javascript formName="addbadmanForm" method="check" dynamicJavascript="true"/>
</head>

<body>
<c:choose>
  <c:when test="${param.id!=null}">
    <c:set var="logo" value="��Ϣ�޸�" />
    <c:set var="img" value="xiugai.gif" />
  </c:when>
  <c:otherwise>
    <c:set var="logo" value="��Ϣ���" />
    <c:set var="img" value="tianjia.gif" />
  </c:otherwise>
</c:choose>
<html:form action="admin/addbadman" method="post" onsubmit="return check(this)">
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">������Ա��Ϣ</span>${logo}</span></legend>
		<table width="98%" height="" align="center" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="75" height="25" align="left" >&nbsp;������</td>	
            <td height="25" colspan="3" class=""><html:text property="name" size="20" maxlength="20" /></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="75" height="25" align="left" >&nbsp;�Ա�</td>	
            <td height="25" colspan="3" class="">
              ��<html:radio property="sex" value="��" />
              Ů<html:radio property="sex" value="Ů" />
            </td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="75" height="25" align="left" >&nbsp;���֤�ţ�</td>	
            <td height="25" colspan="3" class=""><html:text property="cardno" size="20" maxlength="20" /></td>
          </tr>
		  <tr>
			<td align="right" valign="top" nowrap>&nbsp;</td>
			<td align="left" colspan="2">
			  <input name="image2" type="image" src="../images/${img}" width="79" height="27" border="0" />&nbsp;&nbsp;
              <input name="image2" type="image"  onclick="javascript:document.addbadmanForm.reset();return false;" src="../images/chongzhi.gif" width="79" height="27" border="0" />
              &nbsp;<img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:window.location='badman.do'"/></td>
              <c:if test="${param.id!=null}">
		        <html:hidden property="id" value="${param.id}"/>
		      </c:if>
		  </tr>
	    </table>
	  </fieldset>
	</td>
  </tr>
  <tr>
    <td height="32" align="right" valign="top" style="padding-left:10px;padding-right:10px;">&nbsp;	</td>
  </tr>
</table>
</html:form>
</body>
</html>