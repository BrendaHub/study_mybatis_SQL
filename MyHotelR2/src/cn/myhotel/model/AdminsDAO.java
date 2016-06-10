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
 * Data access object (DAO) for domain model class Admins.
 * @see cn.myhotel.model.Admins
 * @author MyEclipse - Hibernate Tools
 */
public class AdminsDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(AdminsDAO.class);

	//property constants
	public static final String ADMIN_ID = "adminId";
	public static final String PASSWORD = "password";
	public static final String NAME = "name";
	public static final String POP = "pop";
	public static final String TYPE = "type";

    
    public boolean save(Admins transientInstance) {
        log.debug("saving Admins instance");
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
    
	public boolean delete(Admins persistentInstance) {
        log.debug("deleting Admins instance");
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
    
    public Admins findById( java.lang.Long id) {
        log.debug("getting Admins instance with id: " + id);
        try {
            Admins instance = (Admins) getSession()
                    .get("cn.myhotel.model.Admins", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Admins instance) {
        log.debug("finding Admins instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Admins")
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
      log.debug("finding Admins instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Admins as model where model." 
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

	public List findByAdminId(Object adminId) {
		return findByProperty(ADMIN_ID, adminId);
	}
	
	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}
	
	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}
	
	public List findByPop(Object pop) {
		return findByProperty(POP, pop);
	}
	
	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}
	
    public Admins merge(Admins detachedInstance) {
        log.debug("merging Admins instance");
        try {
            Admins result = (Admins) getSession()
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

    public boolean attachDirty(Admins instance) {
        log.debug("attaching dirty Admins instance");
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
    
    public void attachClean(Admins instance) {
        log.debug("attaching clean Admins instance");
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