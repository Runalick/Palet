package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class TotalPaymentDTO {
	
	private String merchant_uid;
	private String name;
	private String email;
	private int phone;
	private int totalprice;
	private Timestamp pay_time;
	private String state;
	private String category;
	
	public TotalPaymentDTO() {
		// TODO Auto-generated constructor stub
	}

	public TotalPaymentDTO(String merchant_uid, String name, String email, int phone, int totalprice,
			Timestamp pay_time, String state, String category) {
		super();
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.totalprice = totalprice;
		this.pay_time = pay_time;
		this.state = state;
		this.category = category;
	}

	public String getMerchant_uid() {
		return merchant_uid;
	}

	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public Timestamp getPay_time() {
		return pay_time;
	}

	public void setPay_time(Timestamp pay_time) {
		this.pay_time = pay_time;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
}
