package Trillion.Palet.DTO;

public class FaqDTO {
	private int faq_seq;
	private String title;
	private String contents;
	
	public FaqDTO() {}
	public FaqDTO(int faq_seq, String title, String contents) {
		super();
		this.faq_seq = faq_seq;
		this.title = title;
		this.contents = contents;
	}
	public int getFaq_seq() {
		return faq_seq;
	}
	public void setFaq_seq(int faq_seq) {
		this.faq_seq = faq_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
}
