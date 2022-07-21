package Trillion.Palet.DTO;

public class NewExhibitionDTO {
	
	private int pe_seq;
	private String pe_img;
	private String pe_name;
	private String pe_contents;
	private String pe_support;
	private String pe_date;
	private String pe_price;
	private String pe_writer;
	private String pe_artcount;
	private String pe_period;
	private int pe_salescount;
	
	public NewExhibitionDTO() { }

	public NewExhibitionDTO(int pe_seq, String pe_img, String pe_name, String pe_contents, String pe_support,
			String pe_date, String pe_price, String pe_writer, String pe_artcount, String pe_period, int pe_salescount) {
		super();
		this.pe_seq = pe_seq;
		this.pe_img = pe_img;
		this.pe_name = pe_name;
		this.pe_contents = pe_contents;
		this.pe_support = pe_support;
		this.pe_date = pe_date;
		this.pe_price = pe_price;
		this.pe_writer = pe_writer;
		this.pe_artcount = pe_artcount;
		this.pe_period = pe_period;
		this.pe_salescount = pe_salescount;
	}
	
	

	public NewExhibitionDTO(int pe_seq, String pe_name, String pe_contents, String pe_date,
			String pe_price, String pe_writer, String pe_artcount, String pe_period) {
		super();
		this.pe_seq = pe_seq;
		this.pe_name = pe_name;
		this.pe_contents = pe_contents;
		
		this.pe_date = pe_date;
		this.pe_price = pe_price;
		this.pe_writer = pe_writer;
		this.pe_artcount = pe_artcount;
		this.pe_period = pe_period;
	}

	public int getPe_seq() {
		return pe_seq;
	}

	public void setPe_seq(int pe_seq) {
		this.pe_seq = pe_seq;
	}

	public String getPe_img() {
		return pe_img;
	}

	public void setPe_img(String pe_img) {
		this.pe_img = pe_img;
	}

	public String getPe_name() {
		return pe_name;
	}

	public void setPe_name(String pe_name) {
		this.pe_name = pe_name;
	}

	public String getPe_contents() {
		return pe_contents;
	}

	public void setPe_contents(String pe_contents) {
		this.pe_contents = pe_contents;
	}

	public String getPe_support() {
		return pe_support;
	}

	public void setPe_support(String pe_support) {
		this.pe_support = pe_support;
	}

	public String getPe_date() {
		return pe_date;
	}

	public void setPe_date(String pe_date) {
		this.pe_date = pe_date;
	}

	public String getPe_price() {
		return pe_price;
	}

	public void setPe_price(String pe_price) {
		this.pe_price = pe_price;
	}

	public String getPe_writer() {
		return pe_writer;
	}

	public void setPe_writer(String pe_writer) {
		this.pe_writer = pe_writer;
	}

	public String getPe_artcount() {
		return pe_artcount;
	}

	public void setPe_artcount(String pe_artcount) {
		this.pe_artcount = pe_artcount;
	}

	public String getPe_period() {
		return pe_period;
	}

	public void setPe_period(String pe_period) {
		this.pe_period = pe_period;
	}
	
	public int getPe_salescount() {
		return pe_salescount;
	}

	public void setPe_salescount(int pe_salescount) {
		this.pe_salescount = pe_salescount;
	}

}
