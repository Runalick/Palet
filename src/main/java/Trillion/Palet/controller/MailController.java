package Trillion.Palet.controller;

import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	private MailDAO dao;
	
	@Autowired
	private Gson g;
	
	@RequestMapping(value="sendmail",produces = "text/html;charset=utf8")
	@ResponseBody
	public String sendmail(HttpServletRequest request, HttpServletResponse response,MailDTO dto) throws Exception{
		Message message = new MimeMessage(dao.getSession());
		dto.setReceiver(request.getParameter("eamil")); //메일 받을 주소
		dao.Sendmail(dto); //서비스를 들려서 보낼 내용 받기
		message.setFrom(new InternetAddress("sendMail@gmail.com", "관리자", "utf-8"));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getReceiver()));
		message.setSubject(dto.getTitle());
		message.setContent(dto.getContent(), "text/html; charset=utf-8");

		Transport.send(message);
		// 매일 발송
		String pw = g.toJson(dto.getRandomString());
		return pw;
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
