package cn.myhotel.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * AbstractClient generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractClient  implements java.io.Serializable {


    // Fields    

     private Long id;
     private String clientId;
     private String password;
     private String name;
     private String sex;
     private Date birth;
     private String cardno;
     private String tel;
     private String address;
     private Date regdate;
     private String type;
     private String isbad;
     private String isused;
     private Set order1s = new HashSet(0);


    // Constructors

    /** default constructor */
    public AbstractClient() {
    }

	/** minimal constructor */
    public AbstractClient(String clientId, String password, String name, String sex, Date birth, String cardno, Date regdate, String type) {
        this.clientId = clientId;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.birth = birth;
        this.cardno = cardno;
        this.regdate = regdate;
        this.type = type;
    }
    
    /** full constructor */
    public AbstractClient(String clientId, String password, String name, String sex, Date birth, String cardno, String tel, String address, Date regdate, String type, String isbad, String isused, Set order1s) {
        this.clientId = clientId;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.birth = birth;
        this.cardno = cardno;
        this.tel = tel;
        this.address = address;
        this.regdate = regdate;
        this.type = type;
        this.isbad = isbad;
        this.isused = isused;
        this.order1s = order1s;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getClientId() {
        return this.clientId;
    }
    
    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
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

    public Date getBirth() {
        return this.birth;
    }
    
    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getCardno() {
        return this.cardno;
    }
    
    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public Date getRegdate() {
        return this.regdate;
    }
    
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    public String getIsbad() {
        return this.isbad;
    }
    
    public void setIsbad(String isbad) {
        this.isbad = isbad;
    }

    public String getIsused() {
        return this.isused;
    }
    
    public void setIsused(String isused) {
        this.isused = isused;
    }

    public Set getOrder1s() {
        return this.order1s;
    }
    
    public void setOrder1s(Set order1s) {
        this.order1s = order1s;
    }
   








}