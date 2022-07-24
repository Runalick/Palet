package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class MypageUserDetailDTO {
	private String category;
	private String dc;
	private String used;
	
	private int line;
	private String et_title;
	private String et_date;
	private Timestamp et_buydate;
	private int e_num;
	private String ep_sysname;
	private String et_booknumber;
	
	private String g_name;
	private int totalprice;
	private Timestamp pay_time;
	
	public MypageUserDetailDTO() {
		super();
	}

	public MypageUserDetailDTO(String category, String dc, String used) {
		super();
		this.category = category;
		this.dc = dc;
		this.used = used;
	}
	
	public MypageUserDetailDTO(int line, String et_title, String et_date, Timestamp et_buydate, int e_num,
			String et_booknumber) {
		super();
		this.line = line;
		this.et_title = et_title;
		this.et_date = et_date;
		this.et_buydate = et_buydate;
		this.e_num = e_num;
		this.et_booknumber = et_booknumber;
	}

	public MypageUserDetailDTO(int line, String g_name, int totalprice, Timestamp pay_time) {
		super();
		this.line = line;
		this.g_name = g_name;
		this.totalprice = totalprice;
		this.pay_time = pay_time;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDc() {
		return dc;
	}

	public void setDc(String dc) {
		this.dc = dc;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public int getLine() {
		return line;
	}

	public void setLine(int line) {
		this.line = line;
	}

	public String getEt_title() {
		return et_title;
	}

	public void setEt_title(String et_title) {
		this.et_title = et_title;
	}

	public String getEt_date() {
		return et_date;
	}

	public void setEt_date(String et_date) {
		this.et_date = et_date;
	}

	public Timestamp getEt_buydate() {
		return et_buydate;
	}

	public void setEt_buydate(Timestamp et_buydate) {
		this.et_buydate = et_buydate;
	}

	public int getE_num() {
		return e_num;
	}

	public void setE_num(int e_num) {
		this.e_num = e_num;
	}

	public String getEp_sysname() {
		return ep_sysname;
	}

	public void setEp_sysname(String ep_sysname) {
		this.ep_sysname = ep_sysname;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
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
	
	public String getEt_booknumber() {
		return et_booknumber;
	}

	public void setEt_booknumber(String et_booknumber) {
		this.et_booknumber = et_booknumber;
	}
	

	
	
	
}
