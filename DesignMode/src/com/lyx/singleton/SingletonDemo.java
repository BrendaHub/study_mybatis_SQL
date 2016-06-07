package com.lyx.singleton;

class Single{
	
	//һ���༶��Final ʵ��
	private static final Single s1 = new Single();
	
	public static Single createInstance(){
		if(s1 != null)
			return s1;
		else
			return null;
	}
	
	public void say(){
		System.out.println("Singleton ������ķ������ã�����");
	}
}

public class SingletonDemo {

	public static void main(String[] args) {
		Single.createInstance().say();
	}
	
}
