package Trillion.Palet.DTO;

public class MyPointDTO {
	private String email;
	private int usedpoint;
	private int addpoint;
	public MyPointDTO() {
		super();
	}
	public MyPointDTO(String email, int usedpoint, int addpoint) {
		super();
		this.email = email;
		this.usedpoint = usedpoint;
		this.addpoint = addpoint;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUsedpoint() {
		return usedpoint;
	}
	public void setUsedpoint(int usedpoint) {
		this.usedpoint = usedpoint;
	}
	public int getAddpoint() {
		return addpoint;
	}
	public void setAddpoint(int addpoint) {
		this.addpoint = addpoint;
	}


	
}
