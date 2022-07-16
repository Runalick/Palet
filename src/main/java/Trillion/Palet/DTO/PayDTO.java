package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class PayDTO {
	private String merchant_uid;
	private String name;
	private String email;
	private String phone;
	private String address1;
	private String address2;
	private int zipcode;
	private String g_name;
	private String card_name;
	private String card_number;
	private int card_quota;
	private int totalprice;
	private String delivery_text;
	private Timestamp pay_time;
	private String category;
	private String state;
	private int g_count;
	private String g_option;
	private int point;
	private int usedpoint;
	private int cpdiscount;
	private String cpserial;
	private int g_num;
	
	public PayDTO() {
	}

	public PayDTO(String merchant_uid, String name, String email, String phone, String address1, String address2,
			int zipcode, String g_name, String card_name, String card_number, int card_quota, int totalprice,
			String delivery_text, Timestamp pay_time, String category, String state, int g_count, String g_option,
			int point, int usedpoint, int cpdiscount, String cpserial, int g_num) {
		super();
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address1 = address1;
		this.address2 = address2;
		this.zipcode = zipcode;
		this.g_name = g_name;
		this.card_name = card_name;
		this.card_number = card_number;
		this.card_quota = card_quota;
		this.totalprice = totalprice;
		this.delivery_text = delivery_text;
		this.pay_time = pay_time;
		this.category = category;
		this.state = state;
		this.g_count = g_count;
		this.g_option = g_option;
		this.point = point;
		this.usedpoint = usedpoint;
		this.cpdiscount = cpdiscount;
		this.cpserial = cpserial;
		this.g_num = g_num;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public String getCard_name() {
		return card_name;
	}

	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public int getCard_quota() {
		return card_quota;
	}

	public void setCard_quota(int card_quota) {
		this.card_quota = card_quota;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public String getDelivery_text() {
		return delivery_text;
	}

	public void setDelivery_text(String delivery_text) {
		this.delivery_text = delivery_text;
	}

	public Timestamp getPay_time() {
		return pay_time;
	}

	public void setPay_time(Timestamp pay_time) {
		this.pay_time = pay_time;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getG_count() {
		return g_count;
	}

	public void setG_count(int g_count) {
		this.g_count = g_count;
	}

	public String getG_option() {
		return g_option;
	}

	public void setG_option(String g_option) {
		this.g_option = g_option;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getUsedpoint() {
		return usedpoint;
	}

	public void setUsedpoint(int usedpoint) {
		this.usedpoint = usedpoint;
	}

	public int getCpdiscount() {
		return cpdiscount;
	}

	public void setCpdiscount(int cpdiscount) {
		this.cpdiscount = cpdiscount;
	}

	public String getCpserial() {
		return cpserial;
	}

	public void setCpserial(String cpserial) {
		this.cpserial = cpserial;
	}

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	
	
	
	
}
