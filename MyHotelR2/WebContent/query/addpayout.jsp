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
<script language="javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
<html:javascript formName="addpayoutForm" method="check" dynamicJavascript="true"/>
</head>

<body>
<html:form action="query/addpayout" method="post" onsubmit="return check(this)">
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">偿还银行贷款信息</span></span></legend>
		<table width="98%" height="" align="center" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="10%" height="25" align="left" >&nbsp;还款时间：</td>	
            <td align="left" height="25" colspan="3" class=""><html:text property="pdate" size="20" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM',readOnly:true})" /></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;还本付息金额：</td>
            <td align="left" height="25" colspan="3" class=""><html:text property="price" size="20" maxlength="20" readonly="true"/></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;是否使用公积金：</td>
            <td align="left" height="25" colspan="3" class="">
              <html:radio property="isused" value="0">否</html:radio>
    	      <html:radio property="isused" value="1">是</html:radio>
            </td>
          </tr>
		  <tr>
			<td align="left" colspan="2">
			  <input name="image2" type="image" src="../images/tianjia.gif" width="79" height="27" border="0" />&nbsp;&nbsp;
              <input name="image2" type="image"  onclick="javascript:document.addpayoutForm.reset();return false;" src="../images/chongzhi.gif" width="79" height="27" border="0" />
              &nbsp;<img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:window.location='payout.jsp?type=1'"/></td>
		  </tr>
	    </table>
	  </fieldset>
	</td>
  </tr>
  <tr>
    <td height="32" align="right" valign="top" style="padding-left:10px;padding-right:10px;"><font color="#FF0000" style="font-size:12px"><html:errors /></font></td>
  </tr>
</table>
</html:form>
</body>
</html>