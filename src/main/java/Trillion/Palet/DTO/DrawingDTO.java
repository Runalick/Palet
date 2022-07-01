package Trillion.Palet.DTO;

public class DrawingDTO {
	private int draw_seq;
	private String d_title;
	private String painter;
	private String filename;
	private String email;
	private String admmin_ok;
	
	public DrawingDTO() {
		// TODO Auto-generated constructor stub
	}

	public DrawingDTO(int draw_seq, String d_title, String painter, String filename, String email, String admmin_ok) {
		super();
		this.draw_seq = draw_seq;
		this.d_title = d_title;
		this.painter = painter;
		this.filename = filename;
		this.email = email;
		this.admmin_ok = admmin_ok;
	}

	public int getDraw_seq() {
		return draw_seq;
	}

	public void setDraw_seq(int draw_seq) {
		this.draw_seq = draw_seq;
	}

	public String getD_title() {
		return d_title;
	}

	public void setD_title(String d_title) {
		this.d_title = d_title;
	}

	public String getPainter() {
		return painter;
	}

	public void setPainter(String painter) {
		this.painter = painter;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdmmin_ok() {
		return admmin_ok;
	}

	public void setAdmmin_ok(String admmin_ok) {
		this.admmin_ok = admmin_ok;
	}

	
}
