package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class CartListDTO {
	private int cart_seq;
	private String email;
	private int g_num;
	private int cartstock;
	private Timestamp addDate;
	//cart테이블
	
	private int g_seq;
	private String g_name;
	private int g_price;
	private String g_option;
	//goods 테이블
	
	private String gp_sysname;
	//goodspics 테이블
	
	private int point;
	
	public CartListDTO() {}
	

	public CartListDTO(int cart_seq, String email, int g_num, int cartstock, Timestamp addDate, int g_seq,
			String g_name, int g_price, String g_option, String gp_sysname, int point) {
		super();
		this.cart_seq = cart_seq;
		this.email = email;
		this.g_num = g_num;
		this.cartstock = cartstock;
		this.addDate = addDate;
		this.g_seq = g_seq;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_option = g_option;
		this.gp_sysname = gp_sysname;
		this.point = point;
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


	public Timestamp getAddDate() {
		return addDate;
	}


	public void setAddDate(Timestamp addDate) {
		this.addDate = addDate;
	}


	public int getG_seq() {
		return g_seq;
	}


	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
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


	public String getGp_sysname() {
		return gp_sysname;
	}


	public void setGp_sysname(String gp_sysname) {
		this.gp_sysname = gp_sysname;
	}


	public int getPoint() {
		return point;
	}

	public void setPoint() {
		this.point = (int) Math.round(this.getG_price()*0.05);
	}
	
	
	
}
