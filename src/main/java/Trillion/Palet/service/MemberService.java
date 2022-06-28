package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.MemberDAO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.utiles.EncryptUtils;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public int join(MemberDTO dto) {
		dto.setPw(EncryptUtils.SHA512(dto.getPw()));
		return dao.join(dto);
	}
	
	public boolean isEmailExist(String email) {
		return dao.isEmailExist(email);
	}
	
	public boolean login(String id, String pw) {
		pw = EncryptUtils.SHA512(pw);
		return dao.login(id, pw);
	}
}
