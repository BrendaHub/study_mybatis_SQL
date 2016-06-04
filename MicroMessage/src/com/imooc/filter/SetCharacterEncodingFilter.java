package com.imooc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Logger;

public class SetCharacterEncodingFilter implements Filter {
	
	private Logger logger  =  Logger.getLogger(SetCharacterEncodingFilter. class );

	/**
     * The default character encoding to set for requests that pass through
     * this filter.
     */
    protected String encoding = null;
 
    /**
     * The filter configuration object we are associated with.  If this value
     * is null, this filter instance is not currently configured.
     */
    protected FilterConfig filterConfig = null;
 
    /**
     * Should a character encoding specified by the client be ignored?
     */
    protected boolean ignore = true;
    
	@Override
	public void destroy() {
		this.encoding = null;
        this.filterConfig = null;
	}
 
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 logger.debug(">>>>> ignore : " + ignore);
		 logger.debug(">>>>> request.getCharacterEncoding() : " + request.getCharacterEncoding());
        if (ignore || (request.getCharacterEncoding() == null)) {
            String encoding = selectEncoding(request);
            if (encoding != null){
                request.setCharacterEncoding(encoding);
                response.setCharacterEncoding(encoding); 
                
                logger.debug(">>>>> encoding : " + encoding);
                logger.debug(">>>>> getLocalAddr : " + request.getLocalAddr());
                logger.debug(">>>>> getScheme : " + request.getScheme());
                logger.debug(">>>>> getProtocol : " + request.getProtocol());
                logger.debug(">>>>> getProtocol : " + request.getServerName()); 
            }
        }
 
        chain.doFilter(request, response);

	}
	 
	 protected String selectEncoding(ServletRequest request) {
	        return (this.encoding);
	 }
 
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		 	this.filterConfig = arg0;
	        this.encoding = filterConfig.getInitParameter("encoding");
	        String value = filterConfig.getInitParameter("ignore");
	        logger.debug(">>>>> encoding : " + this.encoding);
	        logger.debug(">>> ignore > : " + value);
	        if (value == null)
	            this.ignore = true;
	        else if (value.equalsIgnoreCase("true"))
	            this.ignore = true;
	        else if (value.equalsIgnoreCase("yes"))
	            this.ignore = true;
	        else
	            this.ignore = false;

	}

}
