package com.lyx.staticfactory;

/**
 * �򵥷���ģʽ
 *   ʵ�ֵĺ��ľ�����һ��ʵ����Ϊ�������д���������������ʵ�����Ӧ�Ķ���
 */
interface Car{
	public void run();
	public void stop();
}

class Benz implements Car{
	public void run(){
		System.out.println("Benz������.....");
	}
	public void stop(){
		System.out.println("Benzͣ����......");
	}
}

class Ford implements Car{
	public void run(){
		System.out.println("Ford������.....");
	}
	public void stop(){
		System.out.println("Fordͣ����......");
	}
}
class Toyota implements Car{
	public void run(){
		System.out.println("Toyota������.....");
	}
	public void stop(){
		System.out.println("Toyotaͣ����......");
	}
}
class Factory{
	public static Car createInstance(){
		return new Benz();
	}
	public static Car createInstance2(String type){
		Car car = null;
		try{
			car = (Car)Class.forName("com.lyx.staticfactory."+type).newInstance();
		} catch(Exception e){
			e.printStackTrace();
		}
		return car;
	}
}
public class FactoryDemo01 {

	public static void main(String[] args) {
		Car car = Factory.createInstance2("Toyota");
		car.run();
		car.stop();
	}
}
