package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class ExProticketDTO {
	private String email;
	private String title;
	private String place;
	private Timestamp datee;
	private String booknumber;
	private String state;
	private Timestamp buydate;
	private String category;
	private String pickdate;
	
	public ExProticketDTO() {}
	public ExProticketDTO(String email, String title, String place, Timestamp datee, String booknumber, String state,
			Timestamp buydate, String category, String pickdate) {
		super();
		this.email = email;
		this.title = title;
		this.place = place;
		this.datee = datee;
		this.booknumber = booknumber;
		this.state = state;
		this.buydate = buydate;
		this.category = category;
		this.pickdate = pickdate;
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
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Timestamp getDatee() {
		return datee;
	}
	public void setDatee(Timestamp datee) {
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
	public Timestamp getBuydate() {
		return buydate;
	}
	public void setBuydate(Timestamp buydate) {
		this.buydate = buydate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPickdate() {
		return pickdate;
	}
	public void setPickdate(String pickdate) {
		this.pickdate = pickdate;
	}
	
	
	
}
