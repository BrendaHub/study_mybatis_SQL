package com.lyx.factorymethod;
//����������

interface Car{
	public void run();
	public void stop();
}

class Benz implements Car{
	public void run(){
		System.out.println("Benz�����ˡ�����");
	}
	public void stop(){
		System.out.println("Benzֹͣ��.....");
	}
}

class Ford implements Car{
	public void run(){
		System.out.println("Ford������....");
	}
	public void stop(){
		System.out.println("Ford ֹͣ�ˡ���������");
	}
}

class BigBus implements Car{
	public void run(){
		System.out.println("BigBus������....");
	}
	public void stop(){
		System.out.println("BigBus ֹͣ�ˡ���������");
	}
}
class MiniBus implements Car{
	public void run(){
		System.out.println("MiniBus������....");
	}
	public void stop(){
		System.out.println("MiniBus ֹͣ�ˡ���������");
	}
}

//����һ���յĳ�չ����ӿ�
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
