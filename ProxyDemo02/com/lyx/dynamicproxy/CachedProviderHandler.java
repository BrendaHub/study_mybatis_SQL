package com.lyx.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/**
 * 动态代码的handler类
 */
public class CachedProviderHandler implements InvocationHandler {
	private Map<String, Object> cached = new HashMap<String, Object>();
	private Object target;
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		Type[] typws = method.getParameterTypes();
		if(method.getName().matches("get.+") && (typws.length == 1) && (typws[0]==String.class)){
			String key = (String)args[0];
			Object value = cached.get(key);
			if(value == null){
				value = method.invoke(target, args);
				cached.put(key, value);
			}
			return value;
		}
		return method.invoke(target, args);
	}

}
