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
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.myhotel.model.RoomtypeDAO;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/templates/message.jsp"
 */
public class DelroomtypeAction extends Action {
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
		String[] id = request.getParameterValues("list");
		RoomtypeDAO dao = new RoomtypeDAO();
		Session session = dao.getSession();
		int index = 0;
		try{
			Transaction tx = session.beginTransaction();
			for(int i=0;i<id.length;i++)
			{
				session.createQuery("delete Roomtype a where a.id = " + id[i]).executeUpdate();
			}
			tx.commit();
			index = 1;
		}catch(Exception e){
			index = 0;
		}finally{
			session.close();
		}
		String mlink = "../bascitem/roomtype.do";
		String msg = "";
		if(index==0)
			msg = "删除数据出错！";
		else
			msg = "删除数据成功！";
		request.setAttribute("msg", msg);
		request.setAttribute("mlink", mlink);
		return mapping.findForward("success");
	}
}