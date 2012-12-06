package car;

public class Cardata {
	
	String VIN;
	String make;
	String category;
	String model;
	String plate;
	String purchasedate;
	
	public void setVIN(String VIN){
		this.VIN = VIN;
	}
	public void setMake(String make){
		this.make = make;
	}
	public void setCategory(String category){
		this.category = category;
	}
	public void setModel(String model){
		this.model = model;
	}
	public void setPlate(String plate){
		this.plate = plate;
	}
	public void setPurchasedate(String date){
		this.purchasedate = date;
	}
	public String getVIN(){
		return VIN;
	}
	public String getMake(){
		return make;
	}
	public String getCategory(){
		return category;
	}
	public String getModel(){
		return model;
	}
	public String getPlate(){
		return plate;
	}
	public String getPurchasedate(){
		return purchasedate;
	}
}
