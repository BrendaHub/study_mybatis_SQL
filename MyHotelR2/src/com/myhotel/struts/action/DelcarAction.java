/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.myhotel.model.Room;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/client/carlist.jsp"
 */
public class DelcarAction extends Action {
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
		// TODO Auto-generated method stub
		List list = (List)request.getSession().getAttribute("car");
		String id = request.getParameter("id");
		for(int i=0;i<list.size();i++)
		{
			Room room = (Room)list.get(i);
			if(room.getId().toString().equals(id))
			{
				list.remove(i);
				request.getSession().setAttribute("car", list);
				break;
			}
		}
		return mapping.findForward("success");
	}
}