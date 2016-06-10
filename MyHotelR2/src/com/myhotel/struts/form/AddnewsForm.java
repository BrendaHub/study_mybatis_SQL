/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import cn.myhotel.model.News;
import cn.myhotel.model.NewsDAO;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.form name="addnewsForm"
 */
public class AddnewsForm extends ValidatorForm {
	/*
	 * Generated fields
	 */

	/**
	 * 
	 */
	private static final long serialVersionUID = -4920173022645872824L;

	/** author property */
	private String author;

	/** title property */
	private String title;

	/** sendtime property */
	private String sendtime;
	
	private String hot;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
		if(request.getParameter("id")!=null)
		{
			NewsDAO dao = new NewsDAO();
			News news = dao.findById(Long.valueOf(request.getParameter("id")));
			this.title = news.getTitle();
			this.sendtime = news.getSendtime().toString().substring(0, 10);
			this.author = news.getAuthor();
			this.hot = news.getHot();
			request.setAttribute("news", news);
			dao.closeSession();
		}
		else
		{
			title = null;
			sendtime = null;
			hot = "0";
			author = null;
		}
	}

	/** 
	 * Returns the author.
	 * @return String
	 */
	public String getAuthor() {
		return author;
	}

	/** 
	 * Set the author.
	 * @param author The author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/** 
	 * Returns the title.
	 * @return String
	 */
	public String getTitle() {
		return title;
	}

	/** 
	 * Set the title.
	 * @param title The title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/** 
	 * Returns the sendtime.
	 * @return String
	 */
	public String getSendtime() {
		return sendtime;
	}

	/** 
	 * Set the sendtime.
	 * @param sendtime The sendtime to set
	 */
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}
	
	public String getHot(){
		return this.hot;
	}
	
	public void setHot(String hot){
		this.hot = hot;
	}
}