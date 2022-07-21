package Trillion.Palet.DTO;

public class GoodsDTO {
	private int line;
	private int g_seq;
	private int g_num;
	private int e_num;
	private String g_name;
	private int g_price;
	private String g_option;
	
	private int sales_count;
	private String g_contents;

	private int g_stock;
	
	private String e_name;

	private int gp_seq;
	private String gp_sysname;
	//goodspic 테이블
	public GoodsDTO() {}
	public GoodsDTO(int line, int g_seq, int g_num, int e_num, String g_name, int g_price, String g_option,
			int sales_count, String g_contents, int g_stock, String e_name, int gp_seq, String gp_sysname) {
		super();
		this.line = line;
		this.g_seq = g_seq;
		this.g_num = g_num;
		this.e_num = e_num;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option = g_option;
		this.sales_count = sales_count;
		this.g_contents = g_contents;
		this.g_stock = g_stock;
		this.e_name = e_name;
		this.gp_seq = gp_seq;
		this.gp_sysname = gp_sysname;
	}
	public int getLine() {
		return line;
	}
	public void setLine(int line) {
		this.line = line;
	}
	public int getG_seq() {
		return g_seq;
	}
	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
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
	public String getG_contents() {
		return g_contents;
	}
	public void setG_contents(String g_contents) {
		this.g_contents = g_contents;
	}
	public int getG_stock() {
		return g_stock;
	}
	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
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
