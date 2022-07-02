package Trillion.Palet.DTO;

public class ExhibitionDTO {
	private int e_num;
	private String e_name;
	private String start_date;
	private String end_date;
	private int sales_count;
	private int e_price;
	
	public ExhibitionDTO() {
		// TODO Auto-generated constructor stub
	}

	public ExhibitionDTO(int e_num, String e_name, String start_date, String end_date, int sales_count, int e_price) {
		super();
		this.e_num = e_num;
		this.e_name = e_name;
		this.start_date = start_date;
		this.end_date = end_date;
		this.sales_count = sales_count;
		this.e_price = e_price;
	}

	public int getE_num() {
		return e_num;
	}

	public void setE_num(int e_num) {
		this.e_num = e_num;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getSales_count() {
		return sales_count;
	}

	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}

	public int getE_price() {
		return e_price;
	}

	public void setE_price(int e_price) {
		this.e_price = e_price;
	}
	
	
}
