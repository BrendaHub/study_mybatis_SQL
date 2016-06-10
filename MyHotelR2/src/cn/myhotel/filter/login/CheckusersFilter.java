package cn.myhotel.filter.login;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CheckusersFilter implements Filter{
	
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain)throws IOException,ServletException
    {
		HttpServletRequest hreq = (HttpServletRequest)request;
		HttpServletResponse hres = (HttpServletResponse)response;
		if(hreq.getSession().getAttribute("user")==null)
		{
			String path = hreq.getRequestURI();
			if(path.contains("mainframe.html"))
				hres.sendRedirect("index.jsp");
			else
				hres.sendRedirect("../index.jsp");
		}
		else
			chain.doFilter(request,response);
    }
    public void destroy(){}

    public void init(FilterConfig filterConfig) throws ServletException {}

}
