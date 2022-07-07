package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class TicketDTO {
	
	private String serial;
	private String email;
	private String e_num;
	private String e_name;
	private String e_price;
	private String start_date;
	private String end_date;
	private String useable;
	private Timestamp purchase_date;
	public TicketDTO() {
		super();
	}
	public TicketDTO(String serial, String email, String e_num, String e_name, String e_price, String start_date,
			String end_date, String useable, Timestamp purchase_date) {
		super();
		this.serial = serial;
		this.email = email;
		this.e_num = e_num;
		this.e_name = e_name;
		this.e_price = e_price;
		this.start_date = start_date;
		this.end_date = end_date;
		this.useable = useable;
		this.purchase_date = purchase_date;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getE_num() {
		return e_num;
	}
	public void setE_num(String e_num) {
		this.e_num = e_num;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_price() {
		return e_price;
	}
	public void setE_price(String e_price) {
		this.e_price = e_price;
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
	public String getUseable() {
		return useable;
	}
	public void setUseable(String useable) {
		this.useable = useable;
	}
	public Timestamp getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Timestamp purchase_date) {
		this.purchase_date = purchase_date;
	}
	

}
