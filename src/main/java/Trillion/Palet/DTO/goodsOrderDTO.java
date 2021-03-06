package Trillion.Palet.DTO;

public class goodsOrderDTO {
	private int cart_seq;
	private String email;
	private int g_seq;
	private int cartstock;
	
	private String g_name;
	private int g_price;
	private int totalPrice;
	private int g_stock;
	private String gp_sysname;
	
	private int g_num;
	
	private String g_option;
	
	public goodsOrderDTO() {
		super();
	}

	public goodsOrderDTO(int cart_seq, String email, int g_seq, int cartstock, String g_name, int g_price,
			int totalPrice, int g_stock, String gp_sysname, int g_num, String g_option) {
		super();
		this.cart_seq = cart_seq;
		this.email = email;
		this.g_seq = g_seq;
		this.cartstock = cartstock;
		this.g_name = g_name;
		this.g_price = g_price;
		this.totalPrice = totalPrice;
		this.g_stock = g_stock;
		this.gp_sysname = gp_sysname;
		this.g_num = g_num;
		this.g_option = g_option;
	}

	public int getCart_seq() {
		return cart_seq;
	}

	public void setCart_seq(int cart_seq) {
		this.cart_seq = cart_seq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}

	public int getCartstock() {
		return cartstock;
	}

	public void setCartstock(int cartstock) {
		this.cartstock = cartstock;
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

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getG_stock() {
		return g_stock;
	}

	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
	}

	public String getGp_sysname() {
		return gp_sysname;
	}

	public void setGp_sysname(String gp_sysname) {
		this.gp_sysname = gp_sysname;
	}

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
	}

	public String getG_option() {
		return g_option;
	}

	public void setG_option(String g_option) {
		this.g_option = g_option;
	}

	

	
	
}
