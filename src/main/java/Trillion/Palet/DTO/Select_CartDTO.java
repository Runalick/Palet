package Trillion.Palet.DTO;

public class Select_CartDTO {
	private int cart_seq;
	private String email;
	private int g_num;
	private int cartstock;
	
	public Select_CartDTO() {}
	public Select_CartDTO(int cart_seq, String email, int g_num, int cartstock) {
		super();
		this.cart_seq = cart_seq;
		this.email = email;
		this.g_num = g_num;
		this.cartstock = cartstock;
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
	
}
