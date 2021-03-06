/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.myhotel.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import cn.myhotel.model.Client;
import cn.myhotel.model.ClientDAO;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.form name="addclientForm"
 */
public class AddclientForm extends ValidatorForm {
	/*
	 * Generated fields
	 */

	/**
	 * 
	 */
	private static final long serialVersionUID = -2580077835931204811L;

	/** sex property */
	private String sex;

	/** address property */
	private String address;

	/** tel property */
	private String tel;

	/** name property */
	private String name;

	/** rpassword property */
	private String rpassword;

	/** cardno property */
	private String cardno;

	/** password property */
	private String password;

	/** date1 property */
	private String date1;

	/** clientId property */
	private String clientId;

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
			ClientDAO dao = new ClientDAO();
			Client client = dao.findById(Long.valueOf(request.getParameter("id")));
			try{
				BeanUtils.copyProperties(this,client);
			}catch(Exception e){
				e.printStackTrace();
			}
			this.date1 = client.getBirth().toString().substring(0,10);
			dao.closeSession();
			request.setAttribute("client", client);
		}
		else
		{
			clientId = null;
			password = null;
			rpassword = null;
			name = null;
			sex = "��";
			date1 = null;
			cardno = null;
			tel = null;
			address = null;
		}
	}

	/** 
	 * Returns the sex.
	 * @return String
	 */
	public String getSex() {
		return sex;
	}

	/** 
	 * Set the sex.
	 * @param sex The sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/** 
	 * Returns the address.
	 * @return String
	 */
	public String getAddress() {
		return address;
	}

	/** 
	 * Set the address.
	 * @param address The address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/** 
	 * Returns the tel.
	 * @return String
	 */
	public String getTel() {
		return tel;
	}

	/** 
	 * Set the tel.
	 * @param tel The tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/** 
	 * Returns the rpassword.
	 * @return String
	 */
	public String getRpassword() {
		return rpassword;
	}

	/** 
	 * Set the rpassword.
	 * @param rpassword The rpassword to set
	 */
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}

	/** 
	 * Returns the cardno.
	 * @return String
	 */
	public String getCardno() {
		return cardno;
	}

	/** 
	 * Set the cardno.
	 * @param cardno The cardno to set
	 */
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}

	/** 
	 * Returns the password.
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/** 
	 * Set the password.
	 * @param password The password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/** 
	 * Returns the date1.
	 * @return String
	 */
	public String getDate1() {
		return date1;
	}

	/** 
	 * Set the date1.
	 * @param date1 The date1 to set
	 */
	public void setDate1(String date1) {
		this.date1 = date1;
	}

	/** 
	 * Returns the clientId.
	 * @return String
	 */
	public String getClientId() {
		return clientId;
	}

	/** 
	 * Set the clientId.
	 * @param clientId The clientId to set
	 */
	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
}