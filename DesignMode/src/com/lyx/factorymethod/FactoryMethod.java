package com.lyx.factorymethod;
//工厂方法类

interface Car{
	public void run();
	public void stop();
}

class Benz implements Car{
	public void run(){
		System.out.println("Benz开动了》。。");
	}
	public void stop(){
		System.out.println("Benz停止了.....");
	}
}

class Ford implements Car{
	public void run(){
		System.out.println("Ford开动了....");
	}
	public void stop(){
		System.out.println("Ford 停止了》。。。。");
	}
}

class BigBus implements Car{
	public void run(){
		System.out.println("BigBus开动了....");
	}
	public void stop(){
		System.out.println("BigBus 停止了》。。。。");
	}
}
class MiniBus implements Car{
	public void run(){
		System.out.println("MiniBus开动了....");
	}
	public void stop(){
		System.out.println("MiniBus 停止了》。。。。");
	}
}

//创建一个空的抽空工厂接口
interface AbstractFactory{
	
}

class CarFactory implements AbstractFactory{
	public static Car createCar(String type){
		Car car = null;
		try{
			car = (Car) Class.forName("com.lyx.factorymethod."+type).newInstance();
		} catch(Exception e){
			e.printStackTrace();
		}
		return car;
	}
}
class BusFactory implements AbstractFactory{
	public static Car createBus(String type){
		Car car = null;
		try{
			car = (Car) Class.forName("com.lyx.factorymethod."+type).newInstance();
		} catch(Exception e){
			e.printStackTrace();
		}
		return car;
	}
}

public class FactoryMethod {

	public static void main(String[] args) {
		Car car = BusFactory.createBus("MiniBus");//CarFactory.createCar("Ford");
		car.run();
		car.stop();
	}

}
