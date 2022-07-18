package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.AdminDAO;
import Trillion.Palet.DAO.MemberDAO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.utiles.EncryptUtils;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private AdminDAO adao;
	
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
	public int modipw(String email,String pw) {
		pw= EncryptUtils.SHA512(pw);
		return dao.modipw(email,pw);
	}
	public int modiname(String email,String name) {
		return dao.modiname(email,name);
	}
	public int modiphone(String email,String phone) {
		return dao.modiphone(email,phone);
	}
	public int modiaddress(String email,String postcode,String address1,String address2) {
		return dao.modiaddress(email,postcode,address1,address2);
	}
	public int delmember(String email) {
		return dao.delmember(email);
	}

	//배송지부분
	public String getName(String email) {
		return dao.getName(email);
	}
	
	public int updatePoint(int et_point, int et_usedpoint, String et_email) {
		
		return dao.updatePoint(et_point, et_usedpoint, et_email);
		
	}
	
}
