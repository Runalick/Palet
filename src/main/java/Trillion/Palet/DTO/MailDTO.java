package Trillion.Palet.DTO;

public class MailDTO {
	private String receiver; // 메일 받을 주소
	private String title;
	private String content;
	private String randomString;
	public MailDTO(String receiver, String title, String content, String randomString) {
		super();
		this.receiver = receiver;
		this.title = title;
		this.content = content;
		this.randomString = randomString;
	}
	public MailDTO() {
		super();
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRandomString() {
		return randomString;
	}
	public void setRandomString(String randomString) {
		this.randomString = randomString;
	}
	
	
}
