package Trillion.Palet.service;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.FaqDAO;
import Trillion.Palet.DTO.FaqDTO;

@Service
public class InfoService {
	@Autowired
	private FaqDAO fdao;
	
	public void userEmail(String userEmail,String title,String contents) {
		final String user = "i2376@naver.com";
		final String password = "CKJBRDMWF5CD";
				
		System.out.println(userEmail+":"+title+":"+contents);
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
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
			message.setSubject(title);
			message.setText(contents);
			Transport.send(message);
		}catch(AddressException e) {
			e.printStackTrace();
		}catch(MessagingException e) {
			e.printStackTrace();
		}
	}
	
	public List<FaqDTO> selectAll(){
		return fdao.selectAll();
	}

	public int faqdel(int faq_seq) {
		return fdao.faqDel(faq_seq);
		
	}

	public int faqInsert(FaqDTO dto) {
		return fdao.faqInsert(dto);
		
	}
}
