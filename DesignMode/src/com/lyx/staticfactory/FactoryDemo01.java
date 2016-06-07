package com.lyx.staticfactory;

/**
 * 简单方法模式
 *   实现的核心就是以一个实例类为基础进行创建工厂方法，来实例相对应的对象。
 */
interface Car{
	public void run();
	public void stop();
}

class Benz implements Car{
	public void run(){
		System.out.println("Benz开动了.....");
	}
	public void stop(){
		System.out.println("Benz停车了......");
	}
}

class Ford implements Car{
	public void run(){
		System.out.println("Ford开动了.....");
	}
	public void stop(){
		System.out.println("Ford停车了......");
	}
}
class Toyota implements Car{
	public void run(){
		System.out.println("Toyota开动了.....");
	}
	public void stop(){
		System.out.println("Toyota停车了......");
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
