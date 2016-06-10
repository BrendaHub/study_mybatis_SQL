/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import cn.myhotel.model.Admins;
import cn.myhotel.model.AdminsDAO;

import com.myhotel.struts.form.AddadminForm;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action path="/admin/addadmin" name="addadminForm" input="/admin/addadmin.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/templates/message.jsp"
 */
public class AddadminAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		AddadminForm addadminForm = (AddadminForm) form;// TODO Auto-generated method stub
		AdminsDAO dao = new AdminsDAO();
		Admins admin = new Admins();
		String mlink = "";
		String msg = "";
		if(request.getAttribute("admininfo")!=null)
		{
			admin = (Admins)request.getAttribute("admininfo");
			mlink = "../admin/addadmin.jsp?id="+admin.getId();
		}
		else
		{
			List list = dao.getSession().createQuery("from Admins where adminId = '"+addadminForm.getAdminId()+"'").list();
			if(list.size()!=0)
			{
				ActionMessages messages = this.getMessages(request);
				messages.add(Globals.ERROR_KEY,new ActionMessage("admin.addfailed"));
				this.addErrors(request, messages);
				dao.closeSession();
				return mapping.getInputForward();
			}
			mlink = "../admin/addadmin.jsp";
		}
		
		admin.setAdminId(addadminForm.getAdminId());
		admin.setPassword(addadminForm.getPassword());
		admin.setName(addadminForm.getName());
		admin.setType("admin");
		admin.setPop(addadminForm.getPop());

		if(dao.attachDirty(admin))
			msg = "保存数据成功！";
		else
			msg = "保存数据失败！";
		dao.closeSession();
		request.setAttribute("msg", msg);
		request.setAttribute("mlink", mlink);
		return mapping.findForward("success");
	}
}