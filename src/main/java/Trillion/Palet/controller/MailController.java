package Trillion.Palet.controller;

import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import Trillion.Palet.DAO.MailDAO;
import Trillion.Palet.DTO.MailDTO;
import Trillion.Palet.service.MailService;
import Trillion.Palet.utiles.EncryptUtils;

@Controller
@RequestMapping("/mail/")
public class MailController {
	
	@Autowired
	private MailService mser;
	
	@Autowired
	private EncryptUtils enc;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired
	private MailDAO dao;
	
	@Autowired
	private Gson g;
	
	@RequestMapping(value="sendmail",produces = "text/html;charset=utf8")
	@ResponseBody
	public String sendmail(String email) throws Exception{
		
		MailDTO dto = new MailDTO();
//      MimeMessage mail = mailSender.createMimeMessage();
		Message message = new MimeMessage(dao.getSession());
//        MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
        // true는 멀티파트 메세지를 사용하겠다는 의미
        mser.send(dto); //서비스를 들려서 보낼 내용 받기
//        mailHelper.setFrom(dto.getFrom());
//        mailHelper.setTo(email);
//        mailHelper.setSubject(dto.getTitle());
//        mailHelper.setText(dto.getContent(), true);
//        mailSender.send(mail);
        // 매일 발송
		System.out.println(email);	
		dto.setReceiver(email); //메일 받을 주소	
		message.setFrom(new InternetAddress("sendMail@gmail.com", "관리자", "utf-8"));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getReceiver()));
		message.setSubject(dto.getTitle());
		message.setContent(dto.getContent(), "text/html; charset=utf-8");
		Transport.send(message);
		// 매일 발송
		String pw = g.toJson(dto.getRandomString());
		return pw;
	}
	@RequestMapping(value="test")
	public String findpw() {
		return "/mypage/findpw";
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
