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
	
	public boolean login(String email, String pw) {
		pw = EncryptUtils.SHA512(pw);
		return dao.login(email, pw);
	}
	
	public int changepw(MemberDTO dto) {
		dto.setPw(EncryptUtils.SHA512(dto.getPw()));
		return dao.changepw(dto);
	}

	public MemberDTO getmember(String email) {
		return dao.getmember(email);
	}
	public int insert(MemberDTO dto) {
		return dao.insert(dto);
	}
	public int changemypage(MemberDTO dto) {
		return dao.changemypage(dto);
	}
	public int memberout(MemberDTO dto) {
		return dao.memberout(dto);
	}
	public int modipw(String id,String pw) {
		pw= EncryptUtils.SHA512(pw);
		return dao.modipw(id,pw);
	}
	public int modiname(String id,String name) {
		return dao.modiname(id,name);
	}
	public int modiphone(String id,String phone) {
		return dao.modiphone(id,phone);
	}
	public int modiaddress(String id,String postcode,String address1,String address2) {
		return dao.modiaddress(id,postcode,address1,address2);
	}
}
