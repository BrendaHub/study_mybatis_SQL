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
<script language="javascript">
function onlyFloat(obj)
{
  obj.value = obj.value.replace(/[^\d\.]+?/g,'');
}
function onlyNum(obj)
{
  obj.value = obj.value.replace(/[^\d]/g,'');
}

function setitem(obj)
{
  if(obj.value.length==0||obj.value=='0')
      obj.value = 1;
}
</script>
<script language="javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
<html:javascript formName="addorder2Form" method="check" dynamicJavascript="true"/>
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
<html:form action="admin/addorder2" method="post" onsubmit="return check(this)">
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">��ס����</span></legend>
		<table width="98%" height="" align="center" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="10%" height="25" align="left" >&nbsp;������</td>
            <td height="25"><html:text property="name" size="20" /></td>
			<td width="10%" height="25" align="left" >&nbsp;�Ա�</td>	
            <td height="25" >
              ��<html:radio property="sex" value="��" />
              Ů<html:radio property="sex" value="Ů" />
            </td>
			<td width="10%" height="25" align="left" >&nbsp;�������ڣ�</td>	
            <td height="25"><html:text property="date1" size="20" styleClass="Wdate" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})"/></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;���֤�ţ�</td>	
            <td height="25"><html:text property="cardno" size="20"/></td>
			<td height="25" align="left" >&nbsp;��ϵ�绰��</td>	
            <td height="25"><html:text property="tel" size="20"/></td>
			<td height="25" align="left" >&nbsp;��ϵ��ַ��</td>	
            <td height="25"><html:text property="address" size="20"/></td>
          </tr>
		  <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;ס����ţ�</td>	
            <td height="25">
              <html:select property="roomId" style="width:150px;">
		        <html:optionsCollection property="roomInfo" label="roomId" value="id"/>
		      </html:select>
            </td>
			<td height="25" align="left" >&nbsp;�޸ļ۸�</td>	
            <td height="25"><html:text property="price" size="20" onkeyup="onlyFloat(this)"/></td>
			<td height="25" align="left" >&nbsp;����������</td>	
            <td height="25"><html:text property="datenum" size="20" onkeyup="onlyNum(this)" onblur="setitem(this)"/></td>
          </tr>
		  <tr>
			<td align="right" valign="top" nowrap>&nbsp;</td>
			<td align="left" colspan="5">
			  <input name="image2" type="image" src="../images/${img}" width="79" height="27" border="0" />&nbsp;&nbsp;
              <input name="image2" type="image" onclick="javascript:document.addorder2Form.reset();return false;" src="../images/chongzhi.gif" width="79" height="27" border="0" />
              &nbsp;<img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:window.location='order2.do'"/></td>
              <c:if test="${param.id!=null}">
		        <html:hidden property="id" value="${param.id}"/>
		      </c:if>
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