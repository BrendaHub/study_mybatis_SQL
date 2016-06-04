package com.lyx.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * 动态代码的handler类
 */
public class CachedProviderHandler implements InvocationHandler {

	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		private Map<String, Object> cached = new HashMap<String, Object>();
		private Object target;
		
		return null;
	}

}
