package cn.myhotel.model;
// Generated by MyEclipse - Hibernate Tools

import java.util.Set;


/**
 * Roomtype generated by MyEclipse - Hibernate Tools
 */
public class Roomtype extends AbstractRoomtype implements java.io.Serializable {

    // Constructors

    /**
	 * 
	 */
	private static final long serialVersionUID = 1814672297483714656L;

	/** default constructor */
    public Roomtype() {
    }

	/** minimal constructor */
    public Roomtype(String typename) {
        super(typename);        
    }
    
    /** full constructor */
    public Roomtype(String typename, Double price, Set rooms) {
        super(typename, price, rooms);        
    }
   
}
