<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<script language="javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
        function check() {
			form=document.addnewsForm;
            value1=ltrim(form.title.value);
            value2=ltrim(form.sendtime.value);
            value3=ltrim(form.author.value);
			if(value1.length==0)
			{
			   alert("标题不能为空！");
			   return false;
            }
            else if(value2.length==0)
			{
			   alert("发布时间不能为空！");
			   return false;
            }
            else if(value3.length==0)
			{
			   alert("发布者不能为空！");
			   return false;
            }
        }
		function ltrim(inputStr){
  var strs,i,startPos,result= "",temp= "";
  strs=inputStr.split("");
  startPos=-1;
  for(i=0;i<strs.length;i++){
  if(strs[i]!=" "){
    startPos=i;
	break;
	}
  }
  if(startPos==-1){
     return "";
	 }else{
	 return(inputStr.substring(startPos));
	 }
}
</script>
<script type="text/javascript" src="FCKeditor/fckeditor.js"></script>
</head>

<body>
<c:choose>
  <c:when test="${param.id!=null}">
    <c:set var="logo" value="信息修改" />
    <c:set var="img" value="xiugai.gif" />
  </c:when>
  <c:otherwise>
    <c:set var="logo" value="信息添加" />
    <c:set var="img" value="tianjia.gif" />
  </c:otherwise>
</c:choose>
<html:form action="bascitem/addnews" method="post" onsubmit="return check()">
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding:10px;" valign="top">
	  <fieldset style="height:100%">
		<legend><span style="font-weight: bold"><span style="border-bottom: dashed 1px">公告信息</span>${logo}</span></legend>
		<table width="98%" height="" align="center" border="0" cellspacing="0" cellpadding="2">
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td width="10%" height="25" align="left" >&nbsp;标题：</td>	
            <td height="25"><html:text property="title" size="60" maxlength="50"/></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;发布时间：</td>	
            <td height="25"><html:text property="sendtime" size="60" maxlength="20" styleClass="Wdate" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" /></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;发布者：</td>	
            <td height="25"><html:text property="author" size="60" maxlength="20" /></td>
          </tr>
          <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
            <td height="25" align="left" >&nbsp;是否热门：</td>	
            <td height="25">
              否<html:radio property="hot" value="0" />
              是<html:radio property="hot" value="1" />
            </td>
          </tr>
		  <tr onfocus="this.select(); " onmouseover="this.style.background='#A7ECF3';" onmouseout="this.style.background='#FFFFFF'">
			<td height="25" align="left" >&nbsp;作业内容：</td>	
            <td height="25">
              <FCK:editor id="icontent" basePath="/Myhotel/FCKeditor/"
              width="100%"
              height="380"
              skinPath="/Myhotel/FCKeditor/editor/skins/silver/"
              defaultLanguage="zh-cn"
              tabSpaces="8"
			  imageBrowserURL="/Myhotel/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Image&Connector=connectors/jsp/connector"
              linkBrowserURL="/Myhotel/FCKeditor/editor/filemanager/browser/default/browser.html?Connector=connectors/jsp/connector"
              flashBrowserURL="/Myhotel/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Flash&Connector=connectors/jsp/connector"
              imageUploadURL="/Myhotel/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Image"
              linkUploadURL="/Myhotel/FCKeditor/editor/filemanager/upload/simpleuploader?Type=File"
              flashUploadURL="/Myhotel/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Flash">
        ${news.content}</FCK:editor>
            </td>
          </tr>
		  <tr>
			<td align="right" valign="top" nowrap>&nbsp;</td>
			<td align="left" colspan="5">
			  <input name="image2" type="image" src="../images/${img}" width="79" height="27" border="0" />&nbsp;&nbsp;
              <input name="image2" type="image" onclick="javascript:document.addreportForm.reset();return false;" src="../images/chongzhi.gif" width="79" height="27" border="0" />
              &nbsp;<img src="../images/fanhui.gif" width="79" height="27"  class="shouxing" onclick="javascript:window.location='news.do'"/></td>
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