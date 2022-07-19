package Trillion.Palet.DTO;

public class CouponDTO {
	
	private int key;
	private String email;
	private String serial;
	private String dc;
	private String category;
	private String used;
	

	public CouponDTO(int key, String email, String serial, String dc, String category, String used) {
		super();
		this.key = key;
		this.email = email;
		this.serial = serial;
		this.dc = dc;
		this.category = category;
		this.used = used;
	}

	public CouponDTO() {
		super();
	}
	
	public String getSerial() {
		return serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getKey() {
		return key;
	}
	public void setKey(int key) {
		this.key = key;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDc() {
		return dc;
	}
	public void setDc(String dc) {
		this.dc = dc;
	}
	public String getUsed() {
		return used;
	}
	public void setUsed(String used) {
		this.used = used;
	}
	
	
	
}
