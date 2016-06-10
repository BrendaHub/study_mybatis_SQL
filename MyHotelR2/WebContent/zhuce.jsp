<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>注册页面</title>
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
				  <a href="index.jsp" class="a_f">『返回登录页面』</a>
				  <font style="padding-left:150px; font-size:16px; font-weight:bold; ">用户注册</font>
				</td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">帐号：</td>
				<td align="left"><html:text property="clientId" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">密码：</td>
				<td align="left"><html:password property="password" size="40" maxlength="20" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">确认密码：</td>
				<td align="left"><html:password property="rpassword" size="40" maxlength="20" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">姓名：</td>
				<td align="left"><html:text property="name" size="40" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">性别：</td>
				<td align="left">
				  男<html:radio property="sex" value="男" />
				  女<html:radio property="sex" value="女" />
				</td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">出生日期：</td>
				<td align="left"><html:text property="date1" size="40" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" /></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">身份证号：</td>
				<td align="left"><html:text property="cardno" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> *</font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">联系电话：</td>
				<td align="left"><html:text property="tel" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> </font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="right">家庭住址：</td>
				<td align="left"><html:text property="address" size="40" maxlength="20"/></td>
				<td align="left"><font color="#FF0000"> </font></td>
			  </tr>
			  <tr bgcolor="#FFFFCC">
			    <td align="center" colspan="3">
				  <input type="submit" value="注册">
				  <input type="reset" value="重填">
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
