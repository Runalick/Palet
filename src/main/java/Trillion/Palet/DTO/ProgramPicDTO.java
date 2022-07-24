package Trillion.Palet.DTO;

public class ProgramPicDTO {
	private int pp_seq;
	private int p_num;
	private String pp_oriname;
	private String pp_sysname;
	
	public ProgramPicDTO() {
		
	}

	public ProgramPicDTO(int pp_seq, int p_num, String pp_oriname, String pp_sysname) {
		super();
		this.pp_seq = pp_seq;
		this.p_num = p_num;
		this.pp_oriname = pp_oriname;
		this.pp_sysname = pp_sysname;
	}

	public int getPp_seq() {
		return pp_seq;
	}

	public void setPp_seq(int pp_seq) {
		this.pp_seq = pp_seq;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String getPp_oriname() {
		return pp_oriname;
	}

	public void setPp_oriname(String pp_oriname) {
		this.pp_oriname = pp_oriname;
	}

	public String getPp_sysname() {
		return pp_sysname;
	}

	public void setPp_sysname(String pp_sysname) {
		this.pp_sysname = pp_sysname;
	}
	
	
}
