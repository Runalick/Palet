package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class MyGoodsDTO {
	private String email;
	private String merchant_uid;
	private String state;
	private String name;
	private String phone;
	private String address1;
	private String address2;
	private int zipcode;
	private String g_name;
	private String card_name;
	private String card_number;
	private int card_quota;
	private int totalprice;
	private int sales_count;
	private int addpoint;
	private int usedpoint;
	private String serial;
	private Timestamp buydate;
	private String category;
	private int g_num;
	private int g_seq;
	private int cp_discount;
	
	private String g_option;
	public MyGoodsDTO() {
		super();
	}
	public MyGoodsDTO(String email, String merchant_uid, String state, String name, String phone, String address1,
			String address2, int zipcode, String g_name, String card_name, String card_number, int card_quota,
			int totalprice, int sales_count, int addpoint, int usedpoint, String serial, Timestamp buydate,
			String category, int g_num, int g_seq, int cp_discount, String g_option) {
		super();
		this.email = email;
		this.merchant_uid = merchant_uid;
		this.state = state;
		this.name = name;
		this.phone = phone;
		this.address1 = address1;
		this.address2 = address2;
		this.zipcode = zipcode;
		this.g_name = g_name;
		this.card_name = card_name;
		this.card_number = card_number;
		this.card_quota = card_quota;
		this.totalprice = totalprice;
		this.sales_count = sales_count;
		this.addpoint = addpoint;
		this.usedpoint = usedpoint;
		this.serial = serial;
		this.buydate = buydate;
		this.category = category;
		this.g_num = g_num;
		this.g_seq = g_seq;
		this.cp_discount = cp_discount;
		this.g_option = g_option;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getSales_count() {
		return sales_count;
	}
	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}
	public int getAddpoint() {
		return addpoint;
	}
	public void setAddpoint(int addpoint) {
		this.addpoint = addpoint;
	}
	public int getUsedpoint() {
		return usedpoint;
	}
	public void setUsedpoint(int usedpoint) {
		this.usedpoint = usedpoint;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
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
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public int getG_seq() {
		return g_seq;
	}
	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}
	public int getCp_discount() {
		return cp_discount;
	}
	public void setCp_discount(int cp_discount) {
		this.cp_discount = cp_discount;
	}
	public String getG_option() {
		return g_option;
	}
	public void setG_option(String g_option) {
		this.g_option = g_option;
	}

	
	
}
