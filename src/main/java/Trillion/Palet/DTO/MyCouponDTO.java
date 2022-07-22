package Trillion.Palet.DTO;

public class MyCouponDTO {
	private String email;
	private String serial;
	public MyCouponDTO() {
		super();
	}
	public MyCouponDTO(String email, String serial) {
		super();
		this.email = email;
		this.serial = serial;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	
	
}
