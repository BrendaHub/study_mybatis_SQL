package cn.myhotel.model;

import cn.myhotel.hibernate.BaseHibernateDAO;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;

/**
 * Data access object (DAO) for domain model class Roomtype.
 * @see cn.myhotel.model.Roomtype
 * @author MyEclipse - Hibernate Tools
 */
public class RoomtypeDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(RoomtypeDAO.class);

	//property constants
	public static final String TYPENAME = "typename";
	public static final String PRICE = "price";

    
    public boolean save(Roomtype transientInstance) {
        log.debug("saving Roomtype instance");
        boolean passed = false;
        try {
        	Transaction tx = getSession().beginTransaction();
            getSession().save(transientInstance);
            tx.commit();
            log.debug("save successful");
            passed = true;
        } catch (RuntimeException re) {
            log.error("save failed", re);
            passed = false;
            throw re;
        }finally{
        	closeSession();
        }
        return passed;
    }
    
	public boolean delete(Roomtype persistentInstance) {
        log.debug("deleting Roomtype instance");
        boolean passed = false;
        try {
        	Transaction tx = getSession().beginTransaction();
            getSession().delete(persistentInstance);
            tx.commit();
            log.debug("delete successful");
            passed = true;
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            passed = false;
            throw re;
        }finally{
        	closeSession();
        }
        return passed;
    }
    
    public Roomtype findById( java.lang.Long id) {
        log.debug("getting Roomtype instance with id: " + id);
        try {
            Roomtype instance = (Roomtype) getSession()
                    .get("cn.myhotel.model.Roomtype", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Roomtype instance) {
        log.debug("finding Roomtype instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Roomtype")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Roomtype instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Roomtype as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }finally{
      	closeSession();
      }
	}

	public List findByTypename(Object typename) {
		return findByProperty(TYPENAME, typename);
	}
	
	public List findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}
	
    public Roomtype merge(Roomtype detachedInstance) {
        log.debug("merging Roomtype instance");
        try {
            Roomtype result = (Roomtype) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }

    public boolean attachDirty(Roomtype instance) {
        log.debug("attaching dirty Roomtype instance");
        boolean passed = false;
        try {
        	Transaction tx = getSession().beginTransaction();
            getSession().saveOrUpdate(instance);
            tx.commit();            
            log.debug("attach successful");
            passed = true;
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            passed = false;
            throw re;
        }finally{
        	closeSession();
        }
        return passed;
    }
    
    public void attachClean(Roomtype instance) {
        log.debug("attaching clean Roomtype instance");
        try {
            getSession().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
}