package com.lyx.dproxy.strList.handler;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class ParseHandler implements InvocationHandler {

	private Object target;
	
	public Object bind(Object tar){
		this.target = tar;
		return Proxy.newProxyInstance(this.target.getClass().getClassLoader(),
				this.target.getClass().getInterfaces(), this);
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		Object result = null;
		result = method.invoke(target, args);
		return result;
	}

}
