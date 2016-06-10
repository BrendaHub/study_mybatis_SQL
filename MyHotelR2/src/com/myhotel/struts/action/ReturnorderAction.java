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

import cn.myhotel.model.Order1;
import cn.myhotel.model.Order1DAO;
import cn.myhotel.model.Room;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/templates/message.jsp"
 */
public class ReturnorderAction extends Action {
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
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		String mlink = "../admin/order1.do";
		String msg = "";
		Order1DAO dao = new Order1DAO();
		Session session = dao.getSession();
		Order1 order1 = (Order1)session.load(Order1.class, Long.valueOf(id));
		boolean passed = false;
		try{
			Transaction tx = session.beginTransaction();
			if(type.equals("1"))
			{
				order1.setIsused("1");
				Room room = (Room)session.load(Room.class, order1.getRoom().getId());
				room.setIsused("0");
				session.update(order1);
				session.update(room);
			}
			else
			{
				order1.setDone("1");
				Room room = (Room)session.load(Room.class, order1.getRoom().getId());
				room.setIsused("0");
				session.update(order1);
				session.update(room);
			}
			tx.commit();
			passed = true;
		}catch(Exception e){
			passed = false;
			e.printStackTrace();
		}finally{
			session.close();
		}
		if(passed)
			msg = "�����ɹ���";
		else
			msg = "����ʧ�ܣ�";
		request.setAttribute("msg", msg);
		request.setAttribute("mlink", mlink);
		return mapping.findForward("success");
	}
}