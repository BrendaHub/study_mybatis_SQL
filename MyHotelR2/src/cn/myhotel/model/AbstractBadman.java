package cn.myhotel.model;



/**
 * AbstractBadman generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractBadman  implements java.io.Serializable {


    // Fields    

     private Long id;
     private String name;
     private String sex;
     private String cardno;


    // Constructors

    /** default constructor */
    public AbstractBadman() {
    }

    
    /** full constructor */
    public AbstractBadman(String name, String sex, String cardno) {
        this.name = name;
        this.sex = sex;
        this.cardno = cardno;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCardno() {
        return this.cardno;
    }
    
    public void setCardno(String cardno) {
        this.cardno = cardno;
    }
   








}