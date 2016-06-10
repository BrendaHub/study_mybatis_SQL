package cn.myhotel.hibernate;

import javax.naming.Context; 
import javax.naming.InitialContext; 
import javax.naming.NamingException; 
import javax.servlet.ServletException; 

import org.hibernate.HibernateException;

import org.apache.struts.action.ActionServlet; 
import org.apache.struts.action.PlugIn; 
import org.apache.struts.config.ModuleConfig; 

/** 
* @author HD 
*/ 
public class InitHibernate implements PlugIn { 

private Context ctx; 
/* 
* ������ٷ��� 
*/ 
public void destroy() {
	
if (ctx != null) { 
try { 
// unbind JNDI �ڵ� 
ctx.unbind("HibernateSessionFactory"); 
} catch (NamingException e) { 
e.printStackTrace(); 
} 
} 
if (HibernateSessionFactory.getSessionFactory() != null) { 
try { 
// �ر�sessionFactory 
HibernateSessionFactory.getSessionFactory().close(); 
} catch (HibernateException e) { 
e.printStackTrace(); 
} 
//sessionFactory = null; 
} 
} 

/* 
* �����ʼ������ 
*/ 
public void init(ActionServlet servlet, ModuleConfig config) 
throws ServletException { 
try { 
// ��ȡSessionFactory��ʵ��
	HibernateSessionFactory.rebuildSessionFactory();

if(HibernateSessionFactory.getSessionFactory()!=null)
	System.out.println("SessionFactory has be successfully builded!");
} catch (HibernateException ex) { 
throw new RuntimeException( 
"Exception building SessionFactory: " + ex.getMessage(), 
ex); 
} 

try { 
// ȡ������������ 
ctx = new InitialContext(); 
// ��sessionFactory bind��JND���� 
ctx.bind("HibernateSessionFactory", HibernateSessionFactory.getSessionFactory()); 
} catch (NamingException ex) { 
throw new RuntimeException( 
"Exception binding SessionFactory to JNDI: " + ex.getMessage(), 
ex); 
} 
} 

}