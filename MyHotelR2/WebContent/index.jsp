<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>酒店管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/main_top_bj2.jpg);}
	INPUT.smallInput {
	BORDER-RIGHT: solid #3D71BA 1px; BORDER-TOP: solid #3D71BA 1px; FONT-WEIGHT: normal; FONT-SIZE: 9pt; BORDER-LEFT: solid #3D71BA 1px; LINE-HEIGHT: normal; BORDER-BOTTOM:solid #3D71BA 1px; FONT-STYLE: normal; HEIGHT: 15px; FONT-VARIANT: normal

}
-->
.td1{
width:30px;
}
</style>
</head>
<body>
<html:form action="/login" method="post">
  <table width="642" height="431" border="0" align="center" cellpadding="0" cellspacing="0" background="images/denglu.gif" style="margin-top:70px;background-repeat:no-repeat;">
    <tr>
      <td height="169" colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td height="13" colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="259" height="62">&nbsp;</td>
      <td width="182" valign="middle" style="padding:2px;"><html:text property="userId" size="20" maxlength="20" style="width:150px;" styleClass="smallInput" /></td>
      <td width="107">&nbsp;</td>
      <td width="64" style="padding-top:0px; cursor:hand;">&nbsp;</td>
    </tr>
    <tr>
      <td height="45">&nbsp;</td>
      <td valign="top" style="padding:2px;"><html:password property="password" size="21" maxlength="20" style="width:150px;" styleClass="smallInput" /></td>
      <td>&nbsp;</td>
      <td style="padding-top:0px; cursor:hand;">&nbsp;</td>
    </tr>
    <tr>
      <td height="25">&nbsp;</td>
      <td valign="top" style="padding:2px;font-size:12px;"><html:radio property="type" value="admin">管理员</html:radio>
        <html:radio property="type" value="client">顾客</html:radio>
      </td>
      <td>&nbsp;</td>
      <td style="padding-top:0px; cursor:hand;">&nbsp;</td>
    </tr>
    <tr>
      <td><span style="padding-top:0px; cursor:hand; padding-right:3px;"></span></td>
      <td><div style="height:22px; width:49px; overflow:hidden; float:left;">
          <html:image src="images/in.gif" border="0"/>
        </div>
        <div style="width:70px; height:22px; overflow:hidden; float:left; margin-left:10px;">
          <input type="button" value="注 册" onclick="javascript:window.location='zhuce.jsp'"/>
        </div></td>
      <td >&nbsp;</td>
      <td style="padding-top:0px; cursor:hand;" colspan="3"><font color="#FF0000" style="font-size:12px">
        <html:errors />
        </font></td>
    </tr>
    <tr height="100">
      <td height="88" colspan="4">&nbsp;</td>
    </tr>
  </table>
</html:form>
</body>
</html>
