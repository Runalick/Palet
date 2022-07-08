package Trillion.Palet.DTO;

public class ExhibitionPicDTO {
	private int ep_seq;
	private int e_num;
	private String ep_oriname;
	private String ep_sysname;
	
	public ExhibitionPicDTO() {
		// TODO Auto-generated constructor stub
	}

	public ExhibitionPicDTO(int ep_seq, int e_num, String ep_oriname, String ep_sysname) {
		super();
		this.ep_seq = ep_seq;
		this.e_num = e_num;
		this.ep_oriname = ep_oriname;
		this.ep_sysname = ep_sysname;
	}

	public int getEp_seq() {
		return ep_seq;
	}

	public void setEp_seq(int ep_seq) {
		this.ep_seq = ep_seq;
	}

	public int getE_num() {
		return e_num;
	}

	public void setE_num(int e_num) {
		this.e_num = e_num;
	}

	public String getEp_oriname() {
		return ep_oriname;
	}

	public void setEp_oriname(String ep_oriname) {
		this.ep_oriname = ep_oriname;
	}

	public String getEp_sysname() {
		return ep_sysname;
	}

	public void setEp_sysname(String ep_sysname) {
		this.ep_sysname = ep_sysname;
	}
	
	
	

}
