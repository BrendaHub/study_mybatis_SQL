package com.imooc.intf;

import org.apache.ibatis.annotations.Select;

import com.imooc.bean.User;

public interface IUser {

	//在接口的方法上通过注解
	//@Select("select * from User where ID = #{id}")
	public User getUserById(int id);
}
