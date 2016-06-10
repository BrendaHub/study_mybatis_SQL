package com.myhotel.struts.form;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import cn.myhotel.model.RoomDAO;
import cn.myhotel.model.Roomtype;

/** 
 * MyEclipse Struts
 * 
 * XDoclet definition:
 * @struts.form name="tongjiForm"
 */
public class TongjiForm extends ValidatorForm {
	/*
	 * Generated fields
	 */

	/**
	 * 
	 */
	private static final long serialVersionUID = -3024946065539365072L;

	/** floor property */
	//private String floor;

	/** roomId property */
	private String roomId;

	/** date2 property */
	private String date2;

	/** typeId property */
	private String typeId;

	/** date1 property */
	private String date1;
	
	private String type;
	
	private List typeInfo = new ArrayList();

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
		date1 = null;
		date2 = null;
		roomId = null;
		//floor = null;
		typeId = null;
		type = "0";
		
		RoomDAO dao = new RoomDAO();
		typeInfo = dao.getSession().createQuery("from Roomtype").list();
		Roomtype roomtype = new Roomtype();
		roomtype.setId(Long.valueOf(0));
		roomtype.setTypename("È«²¿");
		typeInfo.add(0, roomtype);
		dao.closeSession();
	}

	/** 
	 * Returns the floor.
	 * @return String
	 */
	/*public String getFloor() {
		return floor;
	}*/

	/** 
	 * Set the floor.
	 * @param floor The floor to set
	 */
	/*public void setFloor(String floor) {
		this.floor = floor;
	}*/

	/** 
	 * Returns the roomId.
	 * @return String
	 */
	public String getRoomId() {
		return roomId;
	}

	/** 
	 * Set the roomId.
	 * @param roomId The roomId to set
	 */
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	/** 
	 * Returns the date2.
	 * @return String
	 */
	public String getDate2() {
		return date2;
	}

	/** 
	 * Set the date2.
	 * @param date2 The date2 to set
	 */
	public void setDate2(String date2) {
		this.date2 = date2;
	}

	/** 
	 * Returns the typeId.
	 * @return String
	 */
	public String getTypeId() {
		return typeId;
	}

	/** 
	 * Set the typeId.
	 * @param typeId The typeId to set
	 */
	public void setTypeId(String typeId) {
		this.typeId = typeId;
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
	
	public String getType(){
		return this.type;
	}
	
	public void setType(String type){
		this.type = type;
	}
	
	public List getTypeInfo(){
		return typeInfo;
	}
	
	public void setTypeInfo(List typeInfo){
		this.typeInfo = typeInfo;
	}
}