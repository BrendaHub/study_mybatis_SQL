package cn.myhotel.model;
// Generated by MyEclipse - Hibernate Tools

import java.util.Set;


/**
 * Room generated by MyEclipse - Hibernate Tools
 */
public class Room extends AbstractRoom implements java.io.Serializable {

    // Constructors

    /**
	 * 
	 */
	private static final long serialVersionUID = 6198805632961605350L;

	/** default constructor */
    public Room() {
    }

	/** minimal constructor */
    public Room(Roomtype roomtype, String roomId, Integer floor) {
        super(roomtype, roomId, floor);        
    }
    
    /** full constructor */
    public Room(Roomtype roomtype, String roomId, Integer floor, String isused, Set order2s, Set order1s) {
        super(roomtype, roomId, floor, isused, order2s, order1s);        
    }
   
}
