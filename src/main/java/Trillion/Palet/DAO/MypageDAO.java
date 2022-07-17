package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CancelListDTO;
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

	
	//지난전시, 쓴 티켓
	public List<ExticketDTO> premyTicket(String email,int limit ) {
		Map<String,Object> param = new HashMap<>();
		param.put("email", email);
		
		param.put("limit",limit);
		System.out.println(email);
		System.out.println(limit);
		
		return mybatis.selectList("MyPage.premyTicket",param);
	}
	public int premyTicketcnt(String email) {
		return mybatis.selectOne("MyPage.premyTicketcnt",email);
	}

	public ExticketDTO myTicketDetailview(String et_booknumber) {
		return mybatis.selectOne("MyPage.myTicketDetailview",et_booknumber);
	}

	//state BC 상태로 변경
	public int BeforeCancel(CancelDTO dto) {
//		굿즈랑 클래스도 이런식으로 취소 하면 됩니다
//		if(dto.getCategory().equals("E")) {
//		mybatis.update("MyPage.MinusSalesCnt",dto);
//			return mybatis.update("MyPage.BeforeCancel",dto);
//		}else if(dto.getCategory().equals("G")){
		
//	}else if(dto.getCategory().equals("G")){
		
//	}
		
		
		mybatis.update("MyPage.MinusSalesCnt",dto);
		return mybatis.update("MyPage.BeforeCancel",dto);
	}

	public int payCancel(CancelDTO dto) {
		return mybatis.insert("MyPage.payCancel",dto);
	}
	
	
	// Shopping
	
	public List<Object> myShopping(int limit, String email) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("limit", limit);
		param.put("email", email);
		return mybatis.selectList("MyPage.myShopping", param);
	}

	public PayDTO myShoppingDetailView(String merchant_uid) {
		return mybatis.selectOne("MyPage.myShoppingDetailView", merchant_uid);
	}

	public Object myShoppingProduct(String merchant_uid) {
		return mybatis.selectOne("MyPage.myShoppingProduct", merchant_uid);
	}

	public String memberName(String email) {
		return mybatis.selectOne("MyPage.memberName", email);
	}

	public int changeStateCU(String merchant_uid) {
		return mybatis.update("MyPage.changeStateCU",merchant_uid);
	}

	public int changeStateAU(String merchant_uid) {
		return mybatis.update("MyPage.changeStateAU",merchant_uid);
	}

	public List<CancelListDTO> CancelList(String email) {
		return mybatis.selectList("MyPage.CancelList",email);
	}

}
