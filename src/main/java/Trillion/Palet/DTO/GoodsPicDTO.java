package Trillion.Palet.DTO;

public class GoodsPicDTO {
	private int gp_seq;
	private int g_num;
	private int e_num;
	private String gp_oriname;
	private String gp_sysname;
	
	public GoodsPicDTO() {
		super();
	}
	public GoodsPicDTO(int gp_seq, int g_num, int e_num, String gp_oriname, String gp_sysname) {
		super();
		this.gp_seq = gp_seq;
		this.g_num = g_num;
		this.e_num = e_num;
		this.gp_oriname = gp_oriname;
		this.gp_sysname = gp_sysname;
	}
	public int getGp_seq() {
		return gp_seq;
	}
	public void setGp_seq(int gp_seq) {
		this.gp_seq = gp_seq;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public int getE_num() {
		return e_num;
	}
	public void setE_num(int e_num) {
		this.e_num = e_num;
	}
	public String getGp_oriname() {
		return gp_oriname;
	}
	public void setGp_oriname(String gp_oriname) {
		this.gp_oriname = gp_oriname;
	}
	public String getGp_sysname() {
		return gp_sysname;
	}
	public void setGp_sysname(String gp_sysname) {
		this.gp_sysname = gp_sysname;
	}
	
	
}
