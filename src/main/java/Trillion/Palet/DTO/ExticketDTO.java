package Trillion.Palet.DTO;

import java.sql.Date;

public class ExticketDTO {
	private String et_email;
	private String et_title;
	private String et_place;
	private String et_date;
	private String et_booknumber;
	private String et_state;
	private String et_username;
	private String et_phone;
	private String et_paymethod;
	private int et_cost;
	private int et_count;
	private int et_point;
	private Date et_buydate;
	
	
	
	
	
	
	
	
	public ExticketDTO() {}
	
	
	
	public ExticketDTO(String et_email, String et_title, String et_place, String et_date, String et_booknumber,
			String et_state, String et_username, String et_phone, String et_paymethod, int et_cost, int et_count,
			int et_point, Date et_buydate) {
		super();
		this.et_email = et_email;
		this.et_title = et_title;
		this.et_place = et_place;
		this.et_date = et_date;
		this.et_booknumber = et_booknumber;
		this.et_state = et_state;
		this.et_username = et_username;
		this.et_phone = et_phone;
		this.et_paymethod = et_paymethod;
		this.et_cost = et_cost;
		this.et_count = et_count;
		this.et_point = et_point;
		this.et_buydate = et_buydate;
	}
	public String getEt_email() {
		return et_email;
	}
	public void setEt_email(String et_email) {
		this.et_email = et_email;
	}
	public String getEt_title() {
		return et_title;
	}
	public void setEt_title(String et_title) {
		this.et_title = et_title;
	}
	public String getEt_place() {
		return et_place;
	}
	public void setEt_place(String et_place) {
		this.et_place = et_place;
	}
	public String getEt_date() {
		return et_date;
	}
	public void setEt_date(String et_date) {
		this.et_date = et_date;
	}
	public String getEt_booknumber() {
		return et_booknumber;
	}
	public void setEt_booknumber(String et_booknumber) {
		this.et_booknumber = et_booknumber;
	}
	public String getEt_state() {
		return et_state;
	}
	public void setEt_state(String et_state) {
		this.et_state = et_state;
	}
	public String getEt_username() {
		return et_username;
	}
	public void setEt_username(String et_username) {
		this.et_username = et_username;
	}
	public String getEt_phone() {
		return et_phone;
	}
	public void setEt_phone(String et_phone) {
		this.et_phone = et_phone;
	}
	public String getEt_paymethod() {
		return et_paymethod;
	}
	public void setEt_paymethod(String et_paymethod) {
		this.et_paymethod = et_paymethod;
	}
	public int getEt_cost() {
		return et_cost;
	}
	public void setEt_cost(int et_cost) {
		this.et_cost = et_cost;
	}
	public int getEt_count() {
		return et_count;
	}
	public void setEt_count(int et_count) {
		this.et_count = et_count;
	}
	public int getEt_point() {
		return et_point;
	}
	public void setEt_point(int et_point) {
		this.et_point = et_point;
	}
	public Date getEt_buydate() {
		return et_buydate;
	}
	public void setEt_buydate(Date et_buydate) {
		this.et_buydate = et_buydate;
	}
	
	
	


}
