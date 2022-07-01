package Trillion.Palet.DTO;

public class TotalCartDTO {
	
	private int total_num;
	private int total_price;
	
	public TotalCartDTO() {}
	public TotalCartDTO(int total_num, int total_price) {
		super();
		this.total_num = total_num;
		this.total_price = total_price;
	}
	public int getTotal_num() {
		return total_num;
	}
	public void setTotal_num(int total_num) {
		this.total_num = total_num;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	
	
}
