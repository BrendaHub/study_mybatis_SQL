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
public class Delorder1Action extends Action {
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
		Order1DAO dao = new Order1DAO();
		Session session = dao.getSession();
		int index = 0;
		try{
			Transaction tx = session.beginTransaction();
			for(int i=0;i<id.length;i++)
			{
				Order1 order1 = (Order1)session.load(Order1.class, Long.valueOf(id[i]));
				if(order1.getIsused().equals("0")||order1.getDone().equals("0"))
				{
					Room room = (Room)session.load(Room.class, order1.getRoom().getId());
					room.setIsused("0");
					session.update(room);
				}
				session.createQuery("delete Order1 a where a.id = " + id[i]).executeUpdate();
			}
			tx.commit();
			index = 1;
		}catch(Exception e){
			index = 0;
		}finally{
			session.close();
		}
		String mlink = "../admin/order1.do";
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