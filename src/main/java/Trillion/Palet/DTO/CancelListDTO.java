package Trillion.Palet.DTO;

public class CancelListDTO {
	
	private String email;
	private String title;
	private String datee;
	private String booknumber;
	private String state;
	private int cost;
	private String buydate;
	private String pickdate;
	private String sysname;
	private String category;
	private int num;
	private String option1;
	
	public CancelListDTO() {}

	public CancelListDTO(String email, String title, String datee, String booknumber, String state, int cost,
			String buydate, String pickdate, String sysname, String category, int num, String option1) {
		super();
		this.email = email;
		this.title = title;
		this.datee = datee;
		this.booknumber = booknumber;
		this.state = state;
		this.cost = cost;
		this.buydate = buydate;
		this.pickdate = pickdate;
		this.sysname = sysname;
		this.category = category;
		this.num = num;
		this.option1 = option1;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDatee() {
		return datee;
	}

	public void setDatee(String datee) {
		this.datee = datee;
	}

	public String getBooknumber() {
		return booknumber;
	}

	public void setBooknumber(String booknumber) {
		this.booknumber = booknumber;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getBuydate() {
		return buydate;
	}

	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}

	public String getPickdate() {
		return pickdate;
	}

	public void setPickdate(String pickdate) {
		this.pickdate = pickdate;
	}

	public String getSysname() {
		return sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	
	
}
