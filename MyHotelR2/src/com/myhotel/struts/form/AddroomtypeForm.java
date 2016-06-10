/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import cn.myhotel.model.Roomtype;
import cn.myhotel.model.RoomtypeDAO;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.form name="addroomtypeForm"
 */
public class AddroomtypeForm extends ValidatorForm {
	/*
	 * Generated fields
	 */

	/**
	 * 
	 */
	private static final long serialVersionUID = -3248118677158140448L;

	/** price property */
	private String price;

	/** typename property */
	private String typename;

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
			RoomtypeDAO dao = new RoomtypeDAO();
			Roomtype roomtype = dao.findById(Long.valueOf(request.getParameter("id")));
			this.typename = roomtype.getTypename();
			this.price = roomtype.getPrice().toString();
			request.setAttribute("roomtype", roomtype);
			dao.closeSession();
		}
		else
		{
			typename = null;
			price = "0.00";
		}
		
	}

	/** 
	 * Returns the price.
	 * @return String
	 */
	public String getPrice() {
		return price;
	}

	/** 
	 * Set the price.
	 * @param price The price to set
	 */
	public void setPrice(String price) {
		this.price = price;
	}

	/** 
	 * Returns the typename.
	 * @return String
	 */
	public String getTypename() {
		return typename;
	}

	/** 
	 * Set the typename.
	 * @param typename The typename to set
	 */
	public void setTypename(String typename) {
		this.typename = typename;
	}
}