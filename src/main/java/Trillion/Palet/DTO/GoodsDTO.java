package Trillion.Palet.DTO;

public class GoodsDTO {
	private int g_num;
	private String e_num;
	private String g_name;
	private int g_price;
	private String g_option;
	private int sales_count;
	private int e_stock;
	
	public GoodsDTO() {}
	public GoodsDTO(int g_num, String e_num, String g_name, int g_price, String g_option, int sales_count,
			int e_stock) {
		super();
		this.g_num = g_num;
		this.e_num = e_num;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option = g_option;
		this.sales_count = sales_count;
		this.e_stock = e_stock;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public String getE_num() {
		return e_num;
	}
	public void setE_num(String e_num) {
		this.e_num = e_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public int getG_price() {
		return g_price;
	}
	public void setG_price(int g_price) {
		this.g_price = g_price;
	}
	public String getG_option() {
		return g_option;
	}
	public void setG_option(String g_option) {
		this.g_option = g_option;
	}
	public int getSales_count() {
		return sales_count;
	}
	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}
	public int getE_stock() {
		return e_stock;
	}
	public void setE_stock(int e_stock) {
		this.e_stock = e_stock;
	}
	
	
}
