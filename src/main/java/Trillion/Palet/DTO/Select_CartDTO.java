package Trillion.Palet.DTO;

public class Select_CartDTO {
	private int cart_seq;
	private String email;
	private int g_seq;
	private int cartstock;
	
	public Select_CartDTO() {}
	public Select_CartDTO(int cart_seq, String email, int g_seq, int cartstock) {
		super();
		this.cart_seq = cart_seq;
		this.email = email;
		this.g_seq = g_seq;
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
	
}
