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
 * Data access object (DAO) for domain model class Order1.
 * @see cn.myhotel.model.Order1
 * @author MyEclipse - Hibernate Tools
 */
public class Order1DAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(Order1DAO.class);

	//property constants
	public static final String PRICE = "price";
	public static final String DATENUM = "datenum";
	public static final String ISUSED = "isused";
	public static final String DONE = "done";

    
    public boolean save(Order1 transientInstance) {
        log.debug("saving Order1 instance");
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
    
	public boolean delete(Order1 persistentInstance) {
        log.debug("deleting Order1 instance");
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
    
    public Order1 findById( java.lang.Long id) {
        log.debug("getting Order1 instance with id: " + id);
        try {
            Order1 instance = (Order1) getSession()
                    .get("cn.myhotel.model.Order1", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Order1 instance) {
        log.debug("finding Order1 instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Order1")
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
      log.debug("finding Order1 instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Order1 as model where model." 
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

	public List findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}
	
	public List findByDatenum(Object datenum) {
		return findByProperty(DATENUM, datenum);
	}
	
	public List findByIsused(Object isused) {
		return findByProperty(ISUSED, isused);
	}
	
	public List findByDone(Object done) {
		return findByProperty(DONE, done);
	}
	
    public Order1 merge(Order1 detachedInstance) {
        log.debug("merging Order1 instance");
        try {
            Order1 result = (Order1) getSession()
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

    public boolean attachDirty(Order1 instance) {
        log.debug("attaching dirty Order1 instance");
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
    
    public void attachClean(Order1 instance) {
        log.debug("attaching clean Order1 instance");
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