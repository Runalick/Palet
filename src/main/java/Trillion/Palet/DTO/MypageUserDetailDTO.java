package Trillion.Palet.DTO;

public class MypageUserDetailDTO {
	private String category;
	private String et_title;
	private String et_date;
	private String g_name;
	private int totalprice;
	private String ep_sysname;
	private String ep_main;
	private String g_num;
	private String gp_sysname;
	
	public MypageUserDetailDTO() {
		super();
	}

	public MypageUserDetailDTO(String category, String et_title, String et_date, String g_name, int totalprice,
			String ep_sysname, String ep_main, String g_num, String gp_sysname) {
		super();
		this.category = category;
		this.et_title = et_title;
		this.et_date = et_date;
		this.g_name = g_name;
		this.totalprice = totalprice;
		this.ep_sysname = ep_sysname;
		this.ep_main = ep_main;
		this.g_num = g_num;
		this.gp_sysname = gp_sysname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getEp_sysname() {
		return ep_sysname;
	}

	public void setEp_sysname(String ep_sysname) {
		this.ep_sysname = ep_sysname;
	}

	public String getEp_main() {
		return ep_main;
	}

	public void setEp_main(String ep_main) {
		this.ep_main = ep_main;
	}

	public String getG_num() {
		return g_num;
	}

	public void setG_num(String g_num) {
		this.g_num = g_num;
	}

	public String getGp_sysname() {
		return gp_sysname;
	}

	public void setGp_sysname(String gp_sysname) {
		this.gp_sysname = gp_sysname;
	}
	
	
}
