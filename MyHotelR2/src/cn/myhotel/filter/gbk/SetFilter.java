package cn.myhotel.filter.gbk;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse;

public class SetFilter implements Filter
{

    public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain)throws IOException,ServletException
    {
    	request.setCharacterEncoding("GBK");
    	chain.doFilter(request,response);
    }
    public void destroy(){}

    public void init(FilterConfig filterConfig) throws ServletException {}

}