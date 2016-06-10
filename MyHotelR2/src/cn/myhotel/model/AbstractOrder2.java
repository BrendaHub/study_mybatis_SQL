package cn.myhotel.model;

import java.util.Date;


/**
 * AbstractOrder2 generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractOrder2  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Room room;
     private String name;
     private String sex;
     private Date birth;
     private String cardno;
     private String tel;
     private String address;
     private Date regdate;
     private Double price;
     private Integer datenum;
     private String isused;


    // Constructors

    /** default constructor */
    public AbstractOrder2() {
    }

	/** minimal constructor */
    public AbstractOrder2(Room room, String name, String sex, Date birth, String cardno, Date regdate, Double price, Integer datenum) {
        this.room = room;
        this.name = name;
        this.sex = sex;
        this.birth = birth;
        this.cardno = cardno;
        this.regdate = regdate;
        this.price = price;
        this.datenum = datenum;
    }
    
    /** full constructor */
    public AbstractOrder2(Room room, String name, String sex, Date birth, String cardno, String tel, String address, Date regdate, Double price, Integer datenum, String isused) {
        this.room = room;
        this.name = name;
        this.sex = sex;
        this.birth = birth;
        this.cardno = cardno;
        this.tel = tel;
        this.address = address;
        this.regdate = regdate;
        this.price = price;
        this.datenum = datenum;
        this.isused = isused;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public Room getRoom() {
        return this.room;
    }
    
    public void setRoom(Room room) {
        this.room = room;
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

    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getDatenum() {
        return this.datenum;
    }
    
    public void setDatenum(Integer datenum) {
        this.datenum = datenum;
    }

    public String getIsused() {
        return this.isused;
    }
    
    public void setIsused(String isused) {
        this.isused = isused;
    }
   








}