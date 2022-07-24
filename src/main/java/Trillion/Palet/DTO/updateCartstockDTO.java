package Trillion.Palet.DTO;

public class updateCartstockDTO {
	private int g_seq;
	private int cartstock;
	public updateCartstockDTO() {
		super();
	}
	public updateCartstockDTO(int g_seq, int cartstock) {
		super();
		this.g_seq = g_seq;
		this.cartstock = cartstock;
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
