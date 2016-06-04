package com.lyx.dproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
  动态代理的核心实现类，
  要想做到动态代理，这个类是必须要写的
 */
public class ProxyHandler implements InvocationHandler {

	private Object target;
	
	public ProxyHandler(){}
	
	//通过构造器来实始化目标调用对象
	public ProxyHandler(Object tar)
	{
		this.target = tar;
	}
	
	public Object bind(Object tar){
		this.target = tar;
		//绑定该类实现的所有接口， 取得其代理类对象
		return Proxy.newProxyInstance(tar.getClass().getClassLoader(), 
				tar.getClass().getInterfaces(), this);
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		Object result = null;
		result = method.invoke(target, args);
		return result;
	}

}
