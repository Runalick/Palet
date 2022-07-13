package Trillion.Palet.DTO;

import java.sql.Date;
import java.sql.Timestamp;

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
	private int et_usedpoint;
	private int et_number;
	private int et_cpdiscount;
	private String et_cpserial;
	private Timestamp et_buydate;
	private String et_category;
	
	public ExticketDTO() {}
	public ExticketDTO(String et_email, String et_title, String et_place, String et_date, String et_booknumber,
			String et_state, String et_username, String et_phone, String et_paymethod, int et_cost, int et_count,
			int et_point, int et_usedpoint, int et_number, int et_cpdiscount, String et_cpserial, Timestamp et_buydate,
			String et_category) {
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
		this.et_usedpoint = et_usedpoint;
		this.et_number = et_number;
		this.et_cpdiscount = et_cpdiscount;
		this.et_cpserial = et_cpserial;
		this.et_buydate = et_buydate;
		this.et_category = et_category;
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
	public int getEt_usedpoint() {
		return et_usedpoint;
	}
	public void setEt_usedpoint(int et_usedpoint) {
		this.et_usedpoint = et_usedpoint;
	}
	public int getEt_number() {
		return et_number;
	}
	public void setEt_number(int et_number) {
		this.et_number = et_number;
	}
	public int getEt_cpdiscount() {
		return et_cpdiscount;
	}
	public void setEt_cpdiscount(int et_cpdiscount) {
		this.et_cpdiscount = et_cpdiscount;
	}
	public String getEt_cpserial() {
		return et_cpserial;
	}
	public void setEt_cpserial(String et_cpserial) {
		this.et_cpserial = et_cpserial;
	}
	public Timestamp getEt_buydate() {
		return et_buydate;
	}
	public void setEt_buydate(Timestamp et_buydate) {
		this.et_buydate = et_buydate;
	}
	public String getEt_category() {
		return et_category;
	}
	public void setEt_category(String et_category) {
		this.et_category = et_category;
	}
	
	
	


}
