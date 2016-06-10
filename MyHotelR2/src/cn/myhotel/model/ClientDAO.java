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
 * Data access object (DAO) for domain model class Client.
 * @see cn.myhotel.model.Client
 * @author MyEclipse - Hibernate Tools
 */
public class ClientDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(ClientDAO.class);

	//property constants
	public static final String CLIENT_ID = "clientId";
	public static final String PASSWORD = "password";
	public static final String NAME = "name";
	public static final String SEX = "sex";
	public static final String CARDNO = "cardno";
	public static final String TEL = "tel";
	public static final String ADDRESS = "address";
	public static final String TYPE = "type";
	public static final String ISBAD = "isbad";
	public static final String ISUSED = "isused";

    
    public boolean save(Client transientInstance) {
        log.debug("saving Client instance");
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
    
	public boolean delete(Client persistentInstance) {
        log.debug("deleting Client instance");
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
    
    public Client findById( java.lang.Long id) {
        log.debug("getting Client instance with id: " + id);
        try {
            Client instance = (Client) getSession()
                    .get("cn.myhotel.model.Client", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Client instance) {
        log.debug("finding Client instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Client")
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
      log.debug("finding Client instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Client as model where model." 
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

	public List findByClientId(Object clientId) {
		return findByProperty(CLIENT_ID, clientId);
	}
	
	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
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
	
	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}
	
	public List findByIsbad(Object isbad) {
		return findByProperty(ISBAD, isbad);
	}
	
	public List findByIsused(Object isused) {
		return findByProperty(ISUSED, isused);
	}
	
    public Client merge(Client detachedInstance) {
        log.debug("merging Client instance");
        try {
            Client result = (Client) getSession()
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

    public boolean attachDirty(Client instance) {
        log.debug("attaching dirty Client instance");
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
    
    public void attachClean(Client instance) {
        log.debug("attaching clean Client instance");
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