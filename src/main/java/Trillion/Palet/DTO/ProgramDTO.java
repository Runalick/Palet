package Trillion.Palet.DTO;



public class ProgramDTO {
	
	private int p_num;
	private String p_name;
	private String p_date;
	private int sales_count;
	private int p_price;
	private String p_period;
	
	
	public ProgramDTO() {}
	
	public ProgramDTO(int p_num, String p_name, String p_date, int sales_count, int p_price, String p_period) {
		super();
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_date = p_date;
		this.sales_count = sales_count;
		this.p_price = p_price;
		this.p_period = p_period;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public int getSales_count() {
		return sales_count;
	}
	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_period() {
		return p_period;
	}
	public void setP_period(String p_period) {
		this.p_period = p_period;
	}
	
	

}
