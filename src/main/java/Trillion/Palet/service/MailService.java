package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.MailDAO;
import Trillion.Palet.DTO.MailDTO;
import Trillion.Palet.utiles.SendMail;

@Service
public class MailService {

	
	@Autowired
	private MailDAO dao;
	
	@Autowired
	private SendMail smail;
	
	public MailDTO send(MailDTO dto) {
		dto.setRandomString(smail.randomString()); // 난수 설정
		dto.setTitle("비밀번호 찾기 테스트 메일입니다.");
		dto.setContent("<h2>안녕하세요. 관리자입니다.</h2>"
				+ "비밀번호 찾기 인증 번호는 다음과 같습니다.<br>[ "
				+dto.getRandomString()+ " ]입니다.<br>");
		smail.sendEmail(dto);
		return dao.Sendmail(dto);
	}
	
	public MailDTO joinMail(MailDTO dto) {
		dto.setRandomString(smail.randomString());
		dto.setTitle("[Palet]회원가입 인증 메일입니다.");
		dto.setContent("<h2>안녕하세요. Palet입니다.</h2>"
				+ "회원가입 인증 번호는 다음과 같습니다.<br>[ "
				+dto.getRandomString()+ " ]입니다.<br>");
		smail.sendEmail(dto);
		return dao.Sendmail(dto);
	}
}
