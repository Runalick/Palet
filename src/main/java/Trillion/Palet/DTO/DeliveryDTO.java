package Trillion.Palet.DTO;

public class DeliveryDTO {

	private int deliveryaddress_seq; 
	private String email; 
	private String name; 
	private String receiver;
	private String postcode;
	private String address1;
	private String address2; 
	private String phone; 
	private String defaultaddress;
	
	public DeliveryDTO() {}
	public DeliveryDTO(int deliveryaddress_seq, String email, String name, String receiver, String postcode,
			String address1, String address2, String phone, String defaultaddress) {
		super();
		this.deliveryaddress_seq = deliveryaddress_seq;
		this.email = email;
		this.name = name;
		this.receiver = receiver;
		this.postcode = postcode;
		this.address1 = address1;
		this.address2 = address2;
		this.phone = phone;
		this.defaultaddress = defaultaddress;
	}
	public int getDeliveryaddress_seq() {
		return deliveryaddress_seq;
	}
	public void setDeliveryaddress_seq(int deliveryaddress_seq) {
		this.deliveryaddress_seq = deliveryaddress_seq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDefaultaddress() {
		return defaultaddress;
	}
	public void setDefaultaddress(String defaultaddress) {
		this.defaultaddress = defaultaddress;
	}
	
	
}
