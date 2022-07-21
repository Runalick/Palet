package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.TicketDTO;

@Component
public class TicketDAO {

	@Autowired
	private SqlSession mybatis;
	
	public TicketDTO getmyticket(String email) throws Exception{
		return mybatis.selectOne("ticket.myticket",email);
	}
	public ExticketDTO isuseticket(String et_booknumber) throws Exception{
		return mybatis.selectOne("Exticket.isuseticket",et_booknumber);
	}
	public int useticket(String et_booknumber) throws Exception{
		return mybatis.update("Exticket.useticket",et_booknumber);
	}
}
