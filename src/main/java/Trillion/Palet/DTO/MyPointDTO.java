package Trillion.Palet.DTO;

public class MyPointDTO {
	private String email;
	private int usedPoint;
	private int addPoint;
	public MyPointDTO() {
		super();
	}
	public MyPointDTO(String email, int usedPoint, int addPoint) {
		super();
		this.email = email;
		this.usedPoint = usedPoint;
		this.addPoint = addPoint;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUsedPoint() {
		return usedPoint;
	}
	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}
	public int getAddPoint() {
		return addPoint;
	}
	public void setAddPoint(int addPoint) {
		this.addPoint = addPoint;
	}

	
	
}
