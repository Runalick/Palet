package Trillion.Palet.DTO;

public class SalesDTO {
	private int salessum;
	private String salesdate;
	
	public SalesDTO() {
		// TODO Auto-generated constructor stub
	}

	public SalesDTO(int salessum, String salesdate) {
		super();
		this.salessum = salessum;
		this.salesdate = salesdate;
	}

	public int getSalessum() {
		return salessum;
	}

	public void setSalessum(int salessum) {
		this.salessum = salessum;
	}

	public String getSalesdate() {
		return salesdate;
	}

	public void setSalesdate(String salesdate) {
		this.salesdate = salesdate;
	}
	
	
}
