package com.lyx.singleton;

class Single{
	
	//一个类级的Final 实例
	private static final Single s1 = new Single();
	
	public static Single createInstance(){
		if(s1 != null)
			return s1;
		else
			return null;
	}
	
	public void say(){
		System.out.println("Singleton 单例类的方法调用！！！");
	}
}

public class SingletonDemo {

	public static void main(String[] args) {
		Single.createInstance().say();
	}
	
}
