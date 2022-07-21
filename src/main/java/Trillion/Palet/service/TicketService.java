package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.TicketDAO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.TicketDTO;

@Service
public class TicketService {

	@Autowired
	TicketDAO dao;
	
	public TicketDTO getmyticket(String email) throws Exception{
		return dao.getmyticket(email);
	}
	
	public ExticketDTO isuseticket(String et_booknumber) throws Exception{
		return dao.isuseticket(et_booknumber);
	}
	public int useticket(String et_booknumber) throws Exception{
		return dao.useticket(et_booknumber);
	}
	
}
