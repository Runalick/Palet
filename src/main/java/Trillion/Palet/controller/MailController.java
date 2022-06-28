package Trillion.Palet.controller;

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
	public String sendmail(String email) throws Exception{
		
		MailDTO dto = new MailDTO();
		dto.setReceiver(email); // 메일주소 설정
		mser.send(dto); // 서비스에 들려서 내용 받기
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
