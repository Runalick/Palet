package Trillion.Palet.DTO;

public class GoodsDTO {
	private int g_num;
	private int e_num;
	private String g_name;
	private int g_price;
	private String g_option;
	private int sales_count;
	private int g_stock;
	
	public GoodsDTO() {
		// TODO Auto-generated constructor stub
	}

	public GoodsDTO(int g_num, int e_num, String g_name, int g_price, String g_option, int sales_count, int g_stock) {
		super();
		this.g_num = g_num;
		this.e_num = e_num;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option = g_option;
		this.sales_count = sales_count;
		this.g_stock = g_stock;
	}

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
	}

	public int getE_num() {
		return e_num;
	}

	public void setE_num(int e_num) {
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

	public int getG_stock() {
		return g_stock;
	}

	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
	}
	
	
	
}
