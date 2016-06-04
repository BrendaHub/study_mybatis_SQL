package com.lyx.dproxy;

/**
 * 动态代理的测试类
 */
public class TestProxy {

	public static void main(String[] args) {

		//new 一个动态代理的核心类, 真正的代码从这个类开始
		ProxyHandler proxy = new ProxyHandler();
		Subject sub = (Subject)proxy.bind(new RealSubject());
		sub.doSomething();
	}
}
