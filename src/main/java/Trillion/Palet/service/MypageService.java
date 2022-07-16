package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.MypageDAO;
import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.PayDTO;

@Service
public class MypageService {

	@Autowired
	private MypageDAO mdao;

	public List<ExticketDTO> myTicket(String email) {
		return mdao.myTicket(email);
	}

	public int myTicketcnt(String email) {
		return mdao.myTicketcnt(email);
	}
	

	public List<ExticketDTO> premyTicket(String email,int limit ) {
		return mdao.premyTicket(email,limit);
	}
	public int premyTicketcnt(String email) {
		return mdao.premyTicketcnt(email);
	}

	public ExticketDTO myTicketDetailview(String et_booknumber) {
		
		return mdao.myTicketDetailview(et_booknumber);
	}

	public int payCancel(CancelDTO dto) {
		
		mdao.BeforeCancel(dto);
		return mdao.payCancel(dto);
	}
	
	// Shopping

	public List<Object> myShopping(int limit, String email) {
		return mdao.myShopping(limit, email);
	}

	public Object myShoppingDetailView(String merchant_uid) {
		return mdao.myShoppingDetailView(merchant_uid);
	}

	
}
