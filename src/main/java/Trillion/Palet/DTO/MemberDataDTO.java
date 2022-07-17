package Trillion.Palet.DTO;

public class MemberDataDTO {
	private String email;
	private String grade;
	private int point;
	private String category;
	private String serial;
	private String dc;
	private String use;
	
	public MemberDataDTO() {
		super();
	}
	public MemberDataDTO(String email, String grade, int point, String category, String serial, String dc, String use) {
		super();
		this.email = email;
		this.grade = grade;
		this.point = point;
		this.category = category;
		this.serial = serial;
		this.dc = dc;
		this.use = use;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
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
