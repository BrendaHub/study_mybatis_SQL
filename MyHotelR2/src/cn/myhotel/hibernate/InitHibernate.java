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
* 插件销毁方法 
*/ 
public void destroy() {
	
if (ctx != null) { 
try { 
// unbind JNDI 节点 
ctx.unbind("HibernateSessionFactory"); 
} catch (NamingException e) { 
e.printStackTrace(); 
} 
} 
if (HibernateSessionFactory.getSessionFactory() != null) { 
try { 
// 关闭sessionFactory 
HibernateSessionFactory.getSessionFactory().close(); 
} catch (HibernateException e) { 
e.printStackTrace(); 
} 
//sessionFactory = null; 
} 
} 

/* 
* 插件初始化方法 
*/ 
public void init(ActionServlet servlet, ModuleConfig config) 
throws ServletException { 
try { 
// 获取SessionFactory的实例
	HibernateSessionFactory.rebuildSessionFactory();

if(HibernateSessionFactory.getSessionFactory()!=null)
	System.out.println("SessionFactory has be successfully builded!");
} catch (HibernateException ex) { 
throw new RuntimeException( 
"Exception building SessionFactory: " + ex.getMessage(), 
ex); 
} 

try { 
// 取得容器上下文 
ctx = new InitialContext(); 
// 将sessionFactory bind到JND树中 
ctx.bind("HibernateSessionFactory", HibernateSessionFactory.getSessionFactory()); 
} catch (NamingException ex) { 
throw new RuntimeException( 
"Exception binding SessionFactory to JNDI: " + ex.getMessage(), 
ex); 
} 
} 

}