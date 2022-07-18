package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class CancelListDTO {
	private int g_seq;
	private String email;
	private String title;
	private int totalprice;
	private Timestamp pay_time;
	private String state;
	private String category;
	private String options;
	private String sysname;
	private String mained;
	private String uids;
	
	public CancelListDTO() {}

	
	public CancelListDTO(int g_seq, String email, String title, int totalprice, Timestamp pay_time, String state,
			String category, String options, String sysname, String mained, String uids) {
		super();
		this.g_seq = g_seq;
		this.email = email;
		this.title = title;
		this.totalprice = totalprice;
		this.pay_time = pay_time;
		this.state = state;
		this.category = category;
		this.options = options;
		this.sysname = sysname;
		this.mained = mained;
		this.uids = uids;
	}


	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
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

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getSysname() {
		return sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getMained() {
		return mained;
	}

	public void setMained(String mained) {
		this.mained = mained;
	}

	public String getUids() {
		return uids;
	}

	public void setUids(String uids) {
		this.uids = uids;
	}

	
	
	
	
	
}
