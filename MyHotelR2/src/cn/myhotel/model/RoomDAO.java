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
 * Data access object (DAO) for domain model class Room.
 * @see cn.myhotel.model.Room
 * @author MyEclipse - Hibernate Tools
 */
public class RoomDAO extends BaseHibernateDAO {

    private static final Log log = LogFactory.getLog(RoomDAO.class);

	//property constants
	public static final String ROOM_ID = "roomId";
	public static final String FLOOR = "floor";
	public static final String ISUSED = "isused";

    
    public boolean save(Room transientInstance) {
        log.debug("saving Room instance");
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
    
	public boolean delete(Room persistentInstance) {
        log.debug("deleting Room instance");
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
    
    public Room findById( java.lang.Long id) {
        log.debug("getting Room instance with id: " + id);
        try {
            Room instance = (Room) getSession()
                    .get("cn.myhotel.model.Room", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }finally{
        	closeSession();
        }
    }
    
    
    public List findByExample(Room instance) {
        log.debug("finding Room instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.myhotel.model.Room")
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
      log.debug("finding Room instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Room as model where model." 
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

	public List findByRoomId(Object roomId) {
		return findByProperty(ROOM_ID, roomId);
	}
	
	public List findByFloor(Object floor) {
		return findByProperty(FLOOR, floor);
	}
	
	public List findByIsused(Object isused) {
		return findByProperty(ISUSED, isused);
	}
	
    public Room merge(Room detachedInstance) {
        log.debug("merging Room instance");
        try {
            Room result = (Room) getSession()
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

    public boolean attachDirty(Room instance) {
        log.debug("attaching dirty Room instance");
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
    
    public void attachClean(Room instance) {
        log.debug("attaching clean Room instance");
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