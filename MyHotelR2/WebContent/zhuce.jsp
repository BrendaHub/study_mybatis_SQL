<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ע��ҳ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<html:javascript formName="addclientForm" method="check" dynamicJavascript="true"/>
</head>

<body topmargin="0">
<table width="954" align="center" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="954" align="center"><img src="images/daohang.jpg" width="954" height="101"></td>
  </tr>
</table>
<table width="954" align="center" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="954" height="800" class="td_suo">
	  <table width="954" height="700" align="center" border="0" cellpadding="0" cellspacing="0">
		<tr>
		  <td width="954" valign="top">
		    <table width="800" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#FF9933">
			  <html:form action="zhuce" method="post" onsubmit="return check(this)">
			  <tr bgcolor="#FFFFFF">
			    <td height="30" colspan="3" align="left" >
				  <a href="index.jsp" class="a_f">�����ص�¼ҳ�桻</a>
				  <font style="padding-left:150px; font-size:16px; font-weight:bold; ">�û�ע��</font>
				</td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">�ʺţ�</td>
				<td align="left"><html:text property="clientId" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">���룺</td>
				<td align="left"><html:password property="password" size="40" maxlength="20" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">ȷ�����룺</td>
				<td align="left"><html:password property="rpassword" size="40" maxlength="20" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">������</td>
				<td align="left"><html:text property="name" size="40" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">�Ա�</td>
				<td align="left">
				  ��<html:radio property="sex" value="��" />
				  Ů<html:radio property="sex" value="Ů" />
				</td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">�������ڣ�</td>
				<td align="left"><html:text property="date1" size="40" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">���֤�ţ�</td>
				<td align="left"><html:text property="cardno" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">��ϵ�绰��</td>
				<td align="left"><html:text property="tel" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> </font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">��ͥסַ��</td>
				<td align="left"><html:text property="address" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> </font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="center" colspan="3">
				  <input type="submit" value="ע��">
				  <input type="reset" value="����">
				</td>
			  </tr>
			  </html:form>
			  <tr bgcolor="#FFFFCC">
			    <td align="left" colspan="3"><font color="#FF0000" style="font-size:12px"><html:errors /></font></td>
			  </tr>
			</table>
		  </td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
</body>
</html>
