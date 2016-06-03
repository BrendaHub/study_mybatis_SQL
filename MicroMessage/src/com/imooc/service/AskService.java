package com.imooc.service;

import java.util.List;

import com.imooc.bean.Message;
import com.imooc.dao.AskDao;

public class AskService {
	
	/**
	 * 查询SQL
	 */
	public List<Message>  queryListByIn(){
		return new AskDao().queryAskDao();
	}
}
