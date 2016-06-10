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
 * Data access object (DAO) for domain model class Order2.
 * @see cn.myhotel.model.Order2
 * @author MyEclipse - Hibernate Tools
 */
public class Order2DAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(Order2DAO.class);

	//property constants
	public static final String NAME = "name";
	public static final String SEX = "sex";
	public static final String CARDNO = "cardno";
	public static final String TEL = "tel";
	public static final String ADDRESS = "address";
	public static final String PRICE = "price";
	public static final String DATENUM = "datenum";
	public static final String ISUSED = "isused";

    
    public boolean save(Order2 transientInstance) {
        log.debug("saving Order2 instance");
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
    
	public boolean delete(Order2 persistentInstance) {
        log.debug("deleting Order2 instance");
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
    
    public Order2 findById( java.lang.Long id) {
        log.debug("getting Order2 instance with id: " + id);
        try {
            Order2 instance = (Order2) getSession()
                    .get("cn.myhotel.model.Order2", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Order2 instance) {
        log.debug("finding Order2 instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Order2")
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
      log.debug("finding Order2 instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Order2 as model where model." 
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

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}
	
	public List findBySex(Object sex) {
		return findByProperty(SEX, sex);
	}
	
	public List findByCardno(Object cardno) {
		return findByProperty(CARDNO, cardno);
	}
	
	public List findByTel(Object tel) {
		return findByProperty(TEL, tel);
	}
	
	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
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
	
    public Order2 merge(Order2 detachedInstance) {
        log.debug("merging Order2 instance");
        try {
            Order2 result = (Order2) getSession()
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

    public boolean attachDirty(Order2 instance) {
        log.debug("attaching dirty Order2 instance");
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
    
    public void attachClean(Order2 instance) {
        log.debug("attaching clean Order2 instance");
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