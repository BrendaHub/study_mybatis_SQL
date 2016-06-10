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
 * Data access object (DAO) for domain model class Badman.
 * @see cn.myhotel.model.Badman
 * @author MyEclipse - Hibernate Tools
 */
public class BadmanDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(BadmanDAO.class);

	//property constants
	public static final String NAME = "name";
	public static final String SEX = "sex";
	public static final String CARDNO = "cardno";

    
    public boolean save(Badman transientInstance) {
        log.debug("saving Badman instance");
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
    
	public boolean delete(Badman persistentInstance) {
        log.debug("deleting Badman instance");
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
    
    public Badman findById( java.lang.Long id) {
        log.debug("getting Badman instance with id: " + id);
        try {
            Badman instance = (Badman) getSession()
                    .get("cn.myhotel.model.Badman", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Badman instance) {
        log.debug("finding Badman instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Badman")
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
      log.debug("finding Badman instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Badman as model where model." 
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
	
    public Badman merge(Badman detachedInstance) {
        log.debug("merging Badman instance");
        try {
            Badman result = (Badman) getSession()
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

    public boolean attachDirty(Badman instance) {
        log.debug("attaching dirty Badman instance");
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
    
    public void attachClean(Badman instance) {
        log.debug("attaching clean Badman instance");
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