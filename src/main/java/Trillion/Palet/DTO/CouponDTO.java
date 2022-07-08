package Trillion.Palet.DTO;

public class CouponDTO {
	
	private int key;
	private String email;
	private String serial;
	private String dc;
	private String category;
	private String use;
	

	public CouponDTO(int key, String email, String serial, String dc, String category, String use) {
		super();
		this.key = key;
		this.email = email;
		this.serial = serial;
		this.dc = dc;
		this.category = category;
		this.use = use;
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
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	
	
	
}
