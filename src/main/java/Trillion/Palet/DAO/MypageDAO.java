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

	public List<ExticketDTO> myTicket(String email) {
		return mybatis.selectList("MyPage.myTicket",email);
	}

	public int myTicketcnt(String email) {
		return mybatis.selectOne("MyPage.myTicketcnt",email);
	}

	public List<PayDTO> myShopping(String email) {
		return mybatis.selectList("MyPage.myShopping", email);
	}
	
	

}
