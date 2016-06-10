package cn.myhotel.hibernate;

import org.hibernate.Session;

import cn.myhotel.hibernate.HibernateSessionFactory;

/**
 * Data access object (DAO) for domain model
 * @author MyEclipse - Hibernate Tools
 */
public class BaseHibernateDAO implements IBaseHibernateDAO {
	
	public Session getSession() {
		//FIXME: Implement this method
		return HibernateSessionFactory.getSession();
	}
	
	public void closeSession() {
		HibernateSessionFactory.closeSession();
	}
	
}