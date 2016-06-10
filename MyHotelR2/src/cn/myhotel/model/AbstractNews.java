package cn.myhotel.model;

import java.util.Date;


/**
 * AbstractNews generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractNews  implements java.io.Serializable {


    // Fields    

     private Long id;
     private String title;
     private String author;
     private Date sendtime;
     private String content;
     private String hot;


    // Constructors

    /** default constructor */
    public AbstractNews() {
    }

	/** minimal constructor */
    public AbstractNews(String title, String author, Date sendtime) {
        this.title = title;
        this.author = author;
        this.sendtime = sendtime;
    }
    
    /** full constructor */
    public AbstractNews(String title, String author, Date sendtime, String content, String hot) {
        this.title = title;
        this.author = author;
        this.sendtime = sendtime;
        this.content = content;
        this.hot = hot;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getSendtime() {
        return this.sendtime;
    }
    
    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public String getHot() {
        return this.hot;
    }
    
    public void setHot(String hot) {
        this.hot = hot;
    }
   








}