package com.imooc.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.imooc.bean.Message;
import com.imooc.db.DBAccess;

/**
 * Ask 数据库访问类
 */
public class AskDao {

	public List<Message> queryAskDao(){
		DBAccess dbAccess = new DBAccess();
		List<Message> list = new ArrayList<Message>();
		SqlSession sqlSession = null;
		try{
			sqlSession = dbAccess.getSqlSession();
			List<Integer>  parameterList = new ArrayList<Integer>();
			parameterList.add(2);
			parameterList.add(4);
			list = sqlSession.selectList("Message.queryListByIn", parameterList);
		} catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		return list;
	}
}
