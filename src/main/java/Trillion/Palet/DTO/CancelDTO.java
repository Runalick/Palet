package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class CancelDTO {
	private int cancel_seq;
	private String content;
	private String category;
	private String booknumber;
	private Timestamp cancel_date;
	
	public CancelDTO() {}
	public CancelDTO(int cancel_seq, String content, String category, String booknumber, Timestamp cancel_date) {
		super();
		this.cancel_seq = cancel_seq;
		this.content = content;
		this.category = category;
		this.booknumber = booknumber;
		this.cancel_date = cancel_date;
	}
	public int getCancel_seq() {
		return cancel_seq;
	}
	public void setCancel_seq(int cancel_seq) {
		this.cancel_seq = cancel_seq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBooknumber() {
		return booknumber;
	}
	public void setBooknumber(String booknumber) {
		this.booknumber = booknumber;
	}
	public Timestamp getCancel_date() {
		return cancel_date;
	}
	public void setCancel_date(Timestamp cancel_date) {
		this.cancel_date = cancel_date;
	}
	
	
	
}
