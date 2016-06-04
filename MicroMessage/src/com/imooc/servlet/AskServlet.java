package com.imooc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.imooc.service.AskService;

/**
 *  一个处理请求回复的servlet
 */
public class AskServlet extends HttpServlet {

	private Logger logger = Logger.getLogger(AskServlet.class);
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设备请求编码集
		//req.setCharacterEncoding("utf-8");
		//调用service类
//		req.setAttribute("list", JSON.toJSONString(new AskService().queryListByIn()));
		resp.setContentType("application/json");
		String jsonStr = JSON.toJSONString(new AskService().queryListByIn());
		logger.debug(">>>>  debug >>> " + jsonStr);
		resp.getWriter().write(jsonStr);
		//req.getRequestDispatcher("/WEB-INF/jsp/front/front.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	

	
}
