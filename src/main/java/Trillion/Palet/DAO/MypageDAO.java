package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.PayDTO;

@Component
public class MypageDAO {
	
	@Autowired
	private SqlSession mybatis;
	//현재전시, 사용가능 티켓 
	public List<ExticketDTO> myTicket(String email) {
		return mybatis.selectList("MyPage.myTicket",email);
	}

	public int myTicketcnt(String email) {
		return mybatis.selectOne("MyPage.myTicketcnt",email);
	}

	public List<PayDTO> myShopping(String email) {
		return mybatis.selectList("MyPage.myShopping", email);
	}
	
	//지난전시, 쓴 티켓
	public List<ExticketDTO> premyTicket(String email) {
		return mybatis.selectList("MyPage.premyTicket",email);
	}
	public int premyTicketcnt(String email) {
		return mybatis.selectOne("MyPage.premyTicketcnt",email);
	}

	public ExticketDTO myTicketDetailview(String et_booknumber) {
		return mybatis.selectOne("MyPage.myTicketDetailview",et_booknumber);
	}
	

}
