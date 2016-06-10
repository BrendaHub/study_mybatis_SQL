/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.action;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.myhotel.model.News;
import cn.myhotel.model.NewsDAO;

import com.myhotel.struts.form.AddnewsForm;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.action path="/bascitem/addnews" name="addnewsForm" input="/bascitem/addnews.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/templates/message.jsp"
 */
public class AddnewsAction extends Action {
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
		AddnewsForm addnewsForm = (AddnewsForm) form;// TODO Auto-generated method stub
		NewsDAO dao = new NewsDAO();
		News news = new News();
		String mlink = "";
		String msg = "";
		if(request.getAttribute("news")!=null)
		{
			news = (News)request.getAttribute("news");
			mlink = "../bascitem/addnews.jsp?id="+news.getId();
		}
		else
			mlink = "../bascitem/addnews.jsp";
		news.setTitle(addnewsForm.getTitle());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try{
			news.setSendtime(df.parse(addnewsForm.getSendtime()));
		}catch(Exception e){
			e.printStackTrace();
		}
		news.setContent(request.getParameter("icontent"));
		news.setAuthor(addnewsForm.getAuthor());
		news.setHot(addnewsForm.getHot());
		
		if(dao.attachDirty(news))
			msg = "保存数据成功！";
		else
			msg = "保存数据失败！";
		dao.closeSession();
		request.setAttribute("msg", msg);
		request.setAttribute("mlink", mlink);
		return mapping.findForward("success");
	}
}