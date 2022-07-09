package Trillion.Palet.DTO;

public class goodsOrderDTO {
	private int cart_seq;
	private String email;
	private int g_num;
	private int cartstock;
	
	private String g_name;
	private int g_price;
	private int sales_count;
	private int g_stock;
	
	public goodsOrderDTO() {
		super();
	}

	public goodsOrderDTO(int cart_seq, String email, int g_num, int cartstock, String g_name, int g_price,
			int sales_count, int g_stock) {
		super();
		this.cart_seq = cart_seq;
		this.email = email;
		this.g_num = g_num;
		this.cartstock = cartstock;
		this.g_name = g_name;
		this.g_price = g_price;
		this.sales_count = sales_count;
		this.g_stock = g_stock;
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

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
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
