package Trillion.Palet.DTO;

public class MailDTO {
	private String receiver; // 메일 받을 주소
	private String title;
	private String content;
	private String randomString;
    private String from; // 보내는 사람
    
	public MailDTO(String receiver, String title, String content, String randomString, String from) {
		super();
		this.receiver = receiver;
		this.title = title;
		this.content = content;
		this.randomString = randomString;
		this.from = from;
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
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	
	
}
