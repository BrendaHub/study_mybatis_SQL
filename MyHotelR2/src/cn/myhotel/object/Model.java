package cn.myhotel.object;

public class Model {
	
	private String roomId;
	private String typename;
	private String floor;
	private int num;
	private double price;
	
	public Model(){
		
	}
	
	public String getRoomId(){
		return this.roomId;
	}
	
	public void setRoomId(String roomId){
		this.roomId = roomId;
	}
	
	public String getTypename(){
		return this.typename;
	}
	
	public void setTypename(String typename){
		this.typename = typename;
	}
	
	public String getFloor(){
		return this.floor;
	}
	
	public void setFloor(String floor){
		this.floor = floor;
	}
	
	public int getNum(){
		return this.num;
	}
	
	public void setNum(int num){
		this.num = num;
	}
	
	public double getPrice(){
		return this.price;
	}
	
	public void setPrice(double price){
		this.price = price;
	}

}
