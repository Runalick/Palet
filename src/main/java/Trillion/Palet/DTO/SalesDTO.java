package Trillion.Palet.DTO;

public class SalesDTO {
	private int salessum;
	private String salesdate;
	private int salescount;
	
	public SalesDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public SalesDTO(int salessum, String salesdate, int salescount) {
		super();
		this.salessum = salessum;
		this.salesdate = salesdate;
		this.salescount = salescount;
	}
	

	public SalesDTO(int salessum, String salesdate) {
		super();
		this.salessum = salessum;
		this.salesdate = salesdate;
	}
	
	public SalesDTO (String salesdate, int salescount) {
		this.salesdate = salesdate;
		this.salescount = salescount;
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
	
	public int getSalescount() {
		return salescount;
	}
	
	public void setSalescount(int salescount) {
		this.salescount = salescount;
	}
	
	
}
