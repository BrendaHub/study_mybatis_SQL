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
import org.hibernate.Query;

import cn.myhotel.model.Order2DAO;
import cn.myhotel.page.PageInfo;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/admin/order2.jsp"
 */
public class Order2Action extends Action {
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
		Order2DAO dao = new Order2DAO();
		PageInfo p = new PageInfo();
		String page = request.getParameter("Page");
		String type = request.getParameter("type");
		String key = request.getParameter("key");
		String roomId = request.getParameter("roomId");
		if(page==null||page.equals(""))
			page = "1";
		String hql1 = "select count(id) from Order2";
		String hql2 = "from Order2 order by regdate desc";
		if(roomId==null||roomId.equals(""))
		{
			if(type!=null&&!type.equals(""))
			{
				hql1 = "select count(r.id) from Order2 r where r.room.roomtype.id = " + type;
				hql2 = "from Order2 r where r.room.roomtype.id = " + type;
				if(key!=null&&!key.equals(""))
				{
					hql1 = "select count(r.id) from Order2 r where r.room.roomtype.id = " + type + " and r.isused = '"+key+"'";
					hql2 = "from Order2 r where r.room.roomtype.id = " + type + " and r.isused = '"+key+"'";
				}
			}
			else
			{
				if(key!=null&&!key.equals(""))
				{
					hql1 = "select count(r.id) from Order2 r where r.isused = '"+key+"'";
					hql2 = "from Order2 r where r.isused = '"+key+"'";
				}
			}
		}
		else
		{
			hql1 = "select count(r.id) from Order2 r where r.room.roomId = '" + roomId + "'";
			hql2 = "from Order2 r where r.room.roomId = '" + roomId + "'";
			if(type!=null&&!type.equals(""))
			{
				hql1 = "select count(r.id) from Order2 r where r.room.roomId = '" + roomId + "' and r.room.roomtype.id = " + type;
				hql2 = "from Order2 r where r.room.roomId = '" + roomId + "' and r.room.roomtype.id = " + type;
				if(key!=null&&!key.equals(""))
				{
					hql1 = "select count(r.id) from Order2 r where r.room.roomId = '" + roomId + "' and r.room.roomtype.id = " + type + " and r.isused = '"+key+"'";
					hql2 = "from Order2 r where r.room.roomId = '" + roomId + "' and r.room.roomtype.id = " + type + " and r.isused = '"+key+"'";
				}
			}
			else
			{
				if(key!=null&&!key.equals(""))
				{
					hql1 = "select count(r.id) from Order2 r where r.room.roomId = '" + roomId + "' and r.isused = '"+key+"'";
					hql2 = "from Order2 r where r.room.roomId = '" + roomId + "' and r.isused = '"+key+"'";
				}
			}
		}

		Query query0 = dao.getSession().createQuery(hql1);
		p.setTotalcount(((Integer)query0.iterate().next()).intValue());
		p.setPageno(Integer.parseInt(page));
		Query query = dao.getSession().createQuery(hql2);
        
		query.setFirstResult(p.getFirstno());
		query.setMaxResults(p.getPagecount());
		List list = query.list();
		List typelist = dao.getSession().createQuery("from Roomtype").list();
		
        dao.closeSession();

		request.setAttribute("list", list);
		request.setAttribute("typelist", typelist);
		request.setAttribute("type", type);
		request.setAttribute("key", key);
		request.setAttribute("roomId", roomId);
		request.setAttribute("Totalcount", Integer.valueOf(p.getTotalcount()));
		request.setAttribute("Pageno", Integer.valueOf(p.getPageno()));
		request.setAttribute("Totalpage", Integer.valueOf(p.getTotalpage()));
		request.setAttribute("Pagescoll", Integer.valueOf(p.getPagescoll()));
		
		return mapping.findForward("success");
	}
}