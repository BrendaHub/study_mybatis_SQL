package orj.jzkangta.proxydemo02;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class ProxyFunction implements InvocationHandler {
	private Object cm;
	
	public void youHui(){
		System.out.println("�Ҹ���һЩ�Żݡ�����");
	}
	
	public void giveMouse(){
		System.out.println("�һ�Ҫ����һ����ꡣ���� ");
	}
	public Object invoke(Object arg0, Method arg1, Object[] arg2)
			throws Throwable {
		String type=(String)arg2[0];
		if(type.equals("����")||type.equals("����")){
			if(cm==null){
				cm=new ComputerMaker();
				youHui();
				giveMouse();
				arg1.invoke(cm, type);
			}
		}else{
			System.out.println("��û����Ҫ��������ӵĵ��ԡ�������");
		}
		return null;
	}

}
