package Trillion.Palet.DTO;

public class GoodsDTO {
	private int g_num;
	private int e_num;
	private String g_name;
	private int g_price;
	private String g_option1;
	private String g_option2;
	private String g_option3;
	private int sales_count;
	private String g_contents;

	private int g_stock;
	
	private String e_name;

	private int gp_seq;
	private String gp_sysname;
	//goodspic 테이블
	public GoodsDTO() {}
	
	public GoodsDTO(int g_num, int e_num, String g_name, int g_price, String g_option1, String g_option2,
			String g_option3, int sales_count, String g_contents, int g_stock, String e_name, int gp_seq, String gp_sysname) {
		super();
		this.g_num = g_num;
		this.e_num = e_num;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option1 = g_option1;
		this.g_option2 = g_option2;
		this.g_option3 = g_option3;
		this.sales_count = sales_count;
		this.g_stock = g_stock;
		this.g_contents = g_contents;
		this.e_name = e_name;
		this.gp_seq = gp_seq;
		this.gp_sysname = gp_sysname;
	}
	
	// admin용 DTO

	public GoodsDTO(int g_num, int e_num, String g_name, int g_price, String g_option1, String g_option2,
			String g_option3, int sales_count, String g_contents, int g_stock) {
		super();
		this.g_num = g_num;
		this.e_num = e_num;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option1 = g_option1;
		this.g_option2 = g_option2;
		this.g_option3 = g_option3;
		this.sales_count = sales_count;
		this.g_contents = g_contents;
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
	public String getG_option1() {
		return g_option1;
	}
	public void setG_option1(String g_option1) {
		this.g_option1 = g_option1;
	}
	public String getG_option2() {
		return g_option2;
	}
	public void setG_option2(String g_option2) {
		this.g_option2 = g_option2;
	}
	public String getG_option3() {
		return g_option3;
	}
	public void setG_option3(String g_option3) {
		this.g_option3 = g_option3;
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
	public String getG_contents() {
		return g_contents;
	}
	public void setG_contents(String g_contents) {
		this.g_contents = g_contents;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public int getGp_seq() {
		return gp_seq;
	}
	public void setGp_seq(int gp_seq) {
		this.gp_seq = gp_seq;
	}
	public String getGp_sysname() {
		return gp_sysname;
	}
	public void setGp_sysname(String gp_sysname) {
		this.gp_sysname = gp_sysname;
	}
	
	
	
}
