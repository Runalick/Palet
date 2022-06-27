package Trillion.Palet.DAO;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.MailDTO;

@Component
public class MailDAO {

//	@Autowired
//	private SqlSession mybatis;
	
	public MailDAO() {}
	
	public Session getSession() {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("woohyoung26@gmail.com", "vskkzreckygmltrr");
			}
		});
		return session;
	}
	
	public MailDTO Sendmail(MailDTO dto) {
		return dto;
	}
	
}
