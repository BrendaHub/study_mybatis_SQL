<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns:plow>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title></title>
<link href="css/unicornStyle.css" rel="stylesheet" type="text/css" />

<style type="text/css">
body {  
    overflow-y:scroll;
    margin:10px;
    border:0px;
}
a {  
	color: #002866; 
	text-decoration: none;
	font-size:12px;
}
td,span {  
	color: #002866;
	font-size:12px;
}
plow\:tree { behavior:url(js/tree.htc);}
</style>
</head>

<body bgcolor="#ffffff" text="#000000">
<table width="100%" height ="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
	  <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	    <tr>
		  <td>
			<div class="scrollDiv">
			  <div id="divtree" style="height:101%">
			  <c:if test="${user.type=='admin'}">
				<plow:tree text='��������' style='text-decoration:none;' href='main.html' target='main'>
				  <plow:tree text='��������' style='text-decoration:none;' pic='images/unicorn_ico_resume_s.gif' href='admin/order1.do' target='main' />
				  <plow:tree text='��ס����' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='admin/order2.do' target='main' />
				</plow:tree><br/>
				<c:if test="${user.pop=='1'}">
				<plow:tree text='�˵���ѯ' style='text-decoration:none;' href='main.html' target='main'>
				  <plow:tree text='�˵�ͳ��' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='admin/tongji.jsp' target='main' />
				</plow:tree><br/>
				</c:if>
				<plow:tree text='�������' style='text-decoration:none;' href='main.html' target='main'>
				  <plow:tree text='�������͹���' style='text-decoration:none;' pic='images/unicorn_ico_account_s.gif'  href='bascitem/roomtype.do' target='main' />
				  <plow:tree text='������Ϣ����' style='text-decoration:none;' pic='images/unicorn_ico_resume_s.gif' href='bascitem/room.do' target='main' />
				<!--   <plow:tree text='������Ϣ' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='bascitem/news.do' target='main' /> -->
				</plow:tree><br/>
				<plow:tree text='�˻�����������' style='text-decoration:none;' href='main.html' target='main'>
				  <plow:tree text='ע���û�' style='text-decoration:none;' pic='images/unicorn_ico_resume_s.gif' href='admin/client.do' target='main' />
				  
				  <c:if test="${user.pop=='1'}">
				  <plow:tree text='ϵͳ�û�����' style='text-decoration:none;' pic='images/unicorn_ico_blog_s.gif' href='admin/admins.do' target='main' />
				  </c:if>
		          <plow:tree text='��½�����޸�' style='text-decoration:none;' pic='images/unicorn_ico_modifyPassword_s.gif' href='admin/changepwd.jsp' target='main' />
				  <plow:tree text='��ȫ�˳�ϵͳ' style='text-decoration:none;'  pic='images/unicorn_ico_delete.gif' href='loginout.do' target='_top' />
				</plow:tree>
			   </c:if>
			   <c:if test="${user.type=='client'}">
				<plow:tree text='�Ƶ���Ϣ' style='text-decoration:none;' href='main.html' target='main'>
				<!--   <plow:tree text='�Ƶ깫��' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='client/newslist.do' target='main' /> -->
				  <plow:tree text='�����Ŀ��' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='client/pricelist.do' target='main' />
				</plow:tree><br/>
				<plow:tree text='��������' style='text-decoration:none;' href='main.html' target='main'>
				  <plow:tree text='Ԥ���ͷ�' style='text-decoration:none;' pic='images/unicorn_ico_SystemSetting_s.gif'  href='client/roomlist.do' target='main' />
				  <plow:tree text='Ԥ���б�' style='text-decoration:none;' pic='images/unicorn_ico_account_s.gif'  href='client/carlist.jsp' starget='main' />
				  <plow:tree text='��ʷ����' style='text-decoration:none;' pic='images/unicorn_ico_account_s.gif'  href='client/orderlist.do' starget='main' />
				</plow:tree><br/>
				<plow:tree text='�˻�����������' style='text-decoration:none;' href='main.html' target='main'>
		          <plow:tree text='�˻���Ϣ' style='text-decoration:none;' pic='images/unicorn_ico_resume_s.gif' href='client/clientInfo.jsp?id=${user.id}' target='main' />
		          <plow:tree text='��½�����޸�' style='text-decoration:none;' pic='images/unicorn_ico_modifyPassword_s.gif' href='admin/changepwd.jsp' target='main' />
				  <plow:tree text='��ȫ�˳�ϵͳ' style='text-decoration:none;'  pic='images/unicorn_ico_delete.gif' href='loginout.do' target='_top' />
				</plow:tree>
			   </c:if>
			   </div>
			</div> 
			</td>
		  </tr>
		</table>
    </td>
  </tr>
</table>
</body>
</html>