/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.myhotel.model.Roomtype;
import cn.myhotel.model.RoomtypeDAO;

import com.myhotel.struts.form.AddroomtypeForm;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action path="/bascitem/addroomtype" name="addroomtypeForm" input="/bascitem/addroomtype.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/templates/message.jsp"
 */
public class AddroomtypeAction extends Action {
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
		AddroomtypeForm addroomtypeForm = (AddroomtypeForm) form;// TODO Auto-generated method stub
		RoomtypeDAO dao = new RoomtypeDAO();
		Roomtype roomtype = new Roomtype();
		String mlink = "";
		String msg = "";
		if(request.getAttribute("roomtype")!=null)
		{
			roomtype = (Roomtype)request.getAttribute("roomtype");
			mlink = "../bascitem/addroomtype.jsp?id="+roomtype.getId();
		}
		else
			mlink = "../bascitem/addroomtype.jsp";
		roomtype.setTypename(addroomtypeForm.getTypename());
		roomtype.setPrice(Double.valueOf(addroomtypeForm.getPrice()));
		if(dao.attachDirty(roomtype))
			msg = "保存数据成功！";
		else
			msg = "保存数据失败！";
		dao.closeSession();
		request.setAttribute("msg", msg);
		request.setAttribute("mlink", mlink);
		return mapping.findForward("success");
	}
}