package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class AdminDTO {

	private String merchant_uid;
	private String name;
	private String email;
	private String phone;
	private String address1;
	private String address2;
	private int zipcode;
	private String title;
	private String place;
	private String card_name;
	private String card_number;
	private int card_quota;
	private String period;
	private String state;
	private String category;
	private int price;
	private Timestamp pay_time;
	private String delivery_text;
	private int count;
	private int point;
	private int usedpoint;
	private int cpdiscount;
	private String cpserial;
	private String options;
	
	
	public AdminDTO() {
		// TODO Auto-generated constructor stub
	}

	// 전체 adminDTO
	
	public AdminDTO(String merchant_uid, String name, String email, String phone, String address1, String address2,
			int zipcode, String title, String place, String card_name, String card_number, int card_quota,
			String period, String state, String category, int price, Timestamp pay_time, String delivery_text,
			int count, int point, int usedpoint, int cpdiscount, String cpserial, String options) {
		super();
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address1 = address1;
		this.address2 = address2;
		this.zipcode = zipcode;
		this.title = title;
		this.place = place;
		this.card_name = card_name;
		this.card_number = card_number;
		this.card_quota = card_quota;
		this.period = period;
		this.state = state;
		this.category = category;
		this.price = price;
		this.pay_time = pay_time;
		this.delivery_text = delivery_text;
		this.count = count;
		this.point = point;
		this.usedpoint = usedpoint;
		this.cpdiscount = cpdiscount;
		this.cpserial = cpserial;
		this.options = options;
	}
	
	// payment용(GOODS)용 생성자

	public AdminDTO(String merchant_uid, String name, String email, String phone, String address1, String address2,
			int zipcode, String title, String card_name, String card_number, int card_quota, String state,
			String category, int price, Timestamp pay_time, String delivery_text, int count, int point, int usedpoint,
			int cpdiscount, String cpserial, String options) {
		super();
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address1 = address1;
		this.address2 = address2;
		this.zipcode = zipcode;
		this.title = title;
		this.card_name = card_name;
		this.card_number = card_number;
		this.card_quota = card_quota;
		this.state = state;
		this.category = category;
		this.price = price;
		this.pay_time = pay_time;
		this.delivery_text = delivery_text;
		this.count = count;
		this.point = point;
		this.usedpoint = usedpoint;
		this.cpdiscount = cpdiscount;
		this.cpserial = cpserial;
		this.options = options;
	}
	
	// Exticket / proticket용 생성자

	public AdminDTO(String merchant_uid, String name, String email, String phone, String title, String place,
			String card_name, String card_number, int card_quota, String period, String state, String category,
			int price, Timestamp pay_time, int count, int point, int usedpoint, int cpdiscount, String cpserial) {
		super();
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.title = title;
		this.place = place;
		this.card_name = card_name;
		this.card_number = card_number;
		this.card_quota = card_quota;
		this.period = period;
		this.state = state;
		this.category = category;
		this.price = price;
		this.pay_time = pay_time;
		this.count = count;
		this.point = point;
		this.usedpoint = usedpoint;
		this.cpdiscount = cpdiscount;
		this.cpserial = cpserial;
	}
	
	

	public AdminDTO(String merchant_uid, String title, int price, Timestamp pay_time, String category) {
		super();
		this.merchant_uid = merchant_uid;
		this.title = title;
		this.price = price;
		this.pay_time = pay_time;
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

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Timestamp getPay_time() {
		return pay_time;
	}

	public void setPay_time(Timestamp pay_time) {
		this.pay_time = pay_time;
	}

	public String getDelivery_text() {
		return delivery_text;
	}

	public void setDelivery_text(String delivery_text) {
		this.delivery_text = delivery_text;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
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

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}
	
	
	
	
	
}
