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
 * Data access object (DAO) for domain model class News.
 * @see cn.myhotel.model.News
 * @author MyEclipse - Hibernate Tools
 */
public class NewsDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(NewsDAO.class);

	//property constants
	public static final String TITLE = "title";
	public static final String AUTHOR = "author";
	public static final String CONTENT = "content";
	public static final String HOT = "hot";

    
    public boolean save(News transientInstance) {
        log.debug("saving News instance");
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
    
	public boolean delete(News persistentInstance) {
        log.debug("deleting News instance");
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
    
    public News findById( java.lang.Long id) {
        log.debug("getting News instance with id: " + id);
        try {
            News instance = (News) getSession()
                    .get("cn.myhotel.model.News", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(News instance) {
        log.debug("finding News instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.News")
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
      log.debug("finding News instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from News as model where model." 
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

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}
	
	public List findByAuthor(Object author) {
		return findByProperty(AUTHOR, author);
	}
	
	public List findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}
	
	public List findByHot(Object hot) {
		return findByProperty(HOT, hot);
	}
	
    public News merge(News detachedInstance) {
        log.debug("merging News instance");
        try {
            News result = (News) getSession()
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

    public boolean attachDirty(News instance) {
        log.debug("attaching dirty News instance");
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
    
    public void attachClean(News instance) {
        log.debug("attaching clean News instance");
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