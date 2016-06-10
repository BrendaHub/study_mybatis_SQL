<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title></title>
<link href="../lyoa.css" rel="stylesheet" type="text/css" />
<script  language= javascript > 
function CheckForm() 
{ 

if((document.form1.rpas.value)=='') 
{ 
alert("原密码不能为空"); 
document.form1.rpas.focus(); 
return false; 
} 
if((document.form1.pas.value)=='') 
{ 
alert("新密码不能为空"); 
document.form1.pas.focus(); 
return false; 
} 
if((document.form1.cpas.value)=='') 
{ 
alert("确认密码不能为空"); 
document.form1.cpas.focus(); 
return false; 
}
if((document.form1.pas.value)!=(document.form1.cpas.value)) 
{ 
alert("前后两次输入密码不一致"); 
document.form1.cpas.focus(); 
return false; 
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
<table width="600" border="0">
  <tr>
    <td width="10">&nbsp;</td>
    <td width="539" height="27" align="left" style="border-bottom: solid 1px"><img src="../images/dot_process.gif" width="7" height="7" /><span  >&nbsp;酒店订房系统&nbsp;&gt;&gt;   </span><span class="hongse">密码修改</span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="25" align="left" valign="middle" >
	<form action="changepwd.do" method="post" name="form1" target="main" id="form1" onsubmit="return CheckForm()">
      <table width="95%" border="0" id=table2>
        <tr>
          <td width="3%" height="25" align="center" valign="middle" >&nbsp;</td>
          <td width="16%" align="center" valign="middle" >原密码输入:</td>
          <td width="81%" align="left" valign="middle"><input name="rpas" type="password" class="wenjian" id="rpas" onfocus="this.select(); " onmouseover="this.style.background='#D6DFF7';" onmouseout="this.style.background='#FFFFFF'" /></td>
        </tr>
        <tr>
          <td height="25" align="center" valign="middle"  style="line-height:150%">&nbsp;</td>
          <td height="25" align="center" valign="middle"  style="line-height:150%"><span  style="line-height:150%">新密码<span  style="line-height:150%">输入</span>:</span></td>
          <td height="25" align="left" valign="middle"  style="line-height:150%"><input name="pas" type="password" class="wenjian" id="pas" onfocus="this.select(); " onmouseover="this.style.background='#D6DFF7';" onmouseout="this.style.background='#FFFFFF'" /></td>
        </tr>
        <tr>
          <td height="25" align="center" valign="middle"  style="line-height:150%">&nbsp;</td>
          <td height="25" align="center" valign="middle"  style="line-height:150%"><span  style="line-height:150%">新密码<span  style="line-height:150%">确认:</span></span></td>
          <td height="25" align="left" valign="middle"  style="line-height:150%"><input name="cpas" type="password" class="wenjian" id="cpas" onfocus="this.select(); " onmouseover="this.style.background='#D6DFF7';" onmouseout="this.style.background='#FFFFFF'" /></td>
        </tr>
        <tr>
          <td height="25" align="center" valign="middle"  style="line-height:150%">&nbsp;</td>
          <td height="54" colspan="2" align="left" valign="middle"  style="line-height:150%">
		   <input type="hidden" name="type" value="${user.type}" />
           <input type="image" src="../images/xiugai.gif" width="79" height="27" border="0"  />&nbsp;
		   <input type="image" src="../images/chongzhi.gif" width="79" height="27" border="0" onclick="javascript:form1.reset();return false;" />&nbsp; 
           <img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:history.back(-1)"/></td>
        </tr>
      </table>
    </form>
	</td>
  </tr>
  <tr>
    <td height="15" colspan="2" align="left" style="padding-left:14px;"><font color="#FF0000" style="font-size:12px"><html:errors /></font></td>
  </tr>
</table>
</body>
</html>