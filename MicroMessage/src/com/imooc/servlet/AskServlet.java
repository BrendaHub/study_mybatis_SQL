package com.imooc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.imooc.service.AskService;

/**
 *  一个处理请求回复的servlet
 */
public class AskServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设备请求编码集
		req.setCharacterEncoding("utf-8");
		//调用service类
//		req.setAttribute("list", JSON.toJSONString(new AskService().queryListByIn()));
		resp.getWriter().println(JSON.toJSONString(new AskService().queryListByIn()));
		req.getRequestDispatcher("/WEB-INF/jsp/front/front.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	

	
}
