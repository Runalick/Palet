package Trillion.Palet.DTO;

public class Drawing_PicDTO {
	private int seq;
	private String sys_Name;
	private int draw_seq;
	
	public Drawing_PicDTO() {
	}

	public Drawing_PicDTO(int seq, String sys_Name, int draw_seq) {
		super();
		this.seq = seq;
		this.sys_Name = sys_Name;
		this.draw_seq = draw_seq;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getSys_Name() {
		return sys_Name;
	}

	public void setSys_Name(String sys_Name) {
		this.sys_Name = sys_Name;
	}

	public int getDraw_seq() {
		return draw_seq;
	}

	public void setDraw_seq(int draw_seq) {
		this.draw_seq = draw_seq;
	}
	
	
}
