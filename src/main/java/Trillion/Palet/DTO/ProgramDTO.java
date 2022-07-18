package Trillion.Palet.DTO;



public class ProgramDTO {
	
	private int p_num;
	private String p_name;
	private String start_date;
	private String end_date;
	private int sales_count;
	private int p_price;
	private String p_period;
	
	
	public ProgramDTO() {}
	
	public ProgramDTO(int p_num, String p_name, String start_date, String end_date, int sales_count, int p_price, String p_period) {
		super();
		this.p_num = p_num;
		this.p_name = p_name;
		this.start_date = start_date;
		this.end_date = end_date;
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
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
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
