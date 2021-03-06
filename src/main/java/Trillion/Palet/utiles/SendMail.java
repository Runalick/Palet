package Trillion.Palet.utiles;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.MailDTO;


@Component
public class SendMail {
	
	public SendMail() {
		
	}
	
	public void sendEmail(MailDTO dto) {
		final String user = "i2376@naver.com";
		final String password = "CKJBRDMWF5CD";

		Properties prop=new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");
				
		Session session = Session.getDefaultInstance(prop,new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user,password);
			}
		});
		
		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getReceiver()));
			message.setSubject(dto.getTitle());
//			message.setText(dto.getContent());
			message.setContent(dto.getContent(), "text/html; charset=utf-8");
			Transport.send(message);
		}catch(AddressException e) {
			e.printStackTrace();
		}catch(MessagingException e) {
			e.printStackTrace();
		}
	}
	
	
	public String randomString() {
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();

		String generatedString = random.ints(leftLimit,rightLimit + 1)
		  .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
		  .limit(targetStringLength)
		  .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		  .toString();
		return generatedString;
	}
}
