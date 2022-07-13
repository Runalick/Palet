package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.MypageDAO;
import Trillion.Palet.DTO.ExticketDTO;

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

	public List<ExticketDTO> premyTicket(String email) {
		return mdao.premyTicket(email);
	}
	public int premyTicketcnt(String email) {
		return mdao.premyTicketcnt(email);
	}

	public ExticketDTO myTicketDetailview(String et_booknumber) {
		return mdao.myTicketDetailview(et_booknumber);
	}
	
}
