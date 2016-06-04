package com.lyx.dproxy;

/**
 * 创建一个真实的实现接口的类
 *
 */
public class RealSubject implements Subject {

	@Override
	public void doSomething() {
		System.out.println("call soSomething()");
	}

}
