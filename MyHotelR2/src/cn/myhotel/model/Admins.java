package cn.myhotel.model;
// Generated by MyEclipse - Hibernate Tools



/**
 * Admins generated by MyEclipse - Hibernate Tools
 */
public class Admins extends AbstractAdmins implements java.io.Serializable {

    // Constructors

    /**
	 * 
	 */
	private static final long serialVersionUID = 5523069604718129705L;

	/** default constructor */
    public Admins() {
    }

	/** minimal constructor */
    public Admins(String adminId, String password, String name, String type) {
        super(adminId, password, name, type);        
    }
    
    /** full constructor */
    public Admins(String adminId, String password, String name, String pop, String type) {
        super(adminId, password, name, pop, type);        
    }
   
}
