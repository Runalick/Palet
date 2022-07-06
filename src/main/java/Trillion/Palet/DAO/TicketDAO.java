package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.TicketDTO;

@Component
public class TicketDAO {

	@Autowired
	private SqlSession mybatis;
	
	public TicketDTO getmyticket(String email) throws Exception{
		return mybatis.selectOne("ticket.myticket",email);
	}
	
}
