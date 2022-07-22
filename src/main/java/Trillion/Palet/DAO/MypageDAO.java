package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CancelListDTO;
import Trillion.Palet.DTO.ExProticketDTO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.MypageUserDetailDTO;
import Trillion.Palet.DTO.PayDTO;
import Trillion.Palet.DTO.ProticketDTO;

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
		if(dto.getCategory().equals("E")) {
			return mybatis.update("MyPage.BeforeCancel",dto);
		}else if(dto.getCategory().equals("G")){
			return mybatis.update("MyPage.BeforeCancel", dto);
		}else if(dto.getCategory().equals("P")) {
			return mybatis.update("MyPage.BeforeCancel", dto);
		}
		
		
//		mybatis.update("MyPage.MinusSalesCnt",dto);
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

	public List<Object> myShoppingProduct(String merchant_uid) {
		return mybatis.selectList("MyPage.myShoppingProduct", merchant_uid);
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
	//
	public List<CancelListDTO> refundajax(String email, String btn) {
		Map<String,String> param = new HashMap<>();
		param.put("email", email);
		param.put("btn", btn);
		
		return mybatis.selectList("MyPage.refundajax",param);
	}
	
	public List<MypageUserDetailDTO> selectMyCoupon(String email){
		return mybatis.selectList("MyPage.selectMyCoupon",email);
	}
	
	public List<MypageUserDetailDTO> selectMyCouponStatus(String email, String used){
		Map<String,String> param = new HashMap<>();
		param.put("email", email);
		param.put("used", used);
		return mybatis.selectList("MyPage.selectMyCouponStatus",param);
	}

	public List<MypageUserDetailDTO> selectMyexhibition(String email){
		return mybatis.selectList("MyPage.selectMyexhibition",email);
	}

	public List<MypageUserDetailDTO> selectMyGoods(String email){
		return mybatis.selectList("MyPage.selectMyGoods",email);
	}
	
	public int couponRegist(String email, String serial){
		Map<String,String> param = new HashMap<>();
		param.put("email", email);
		param.put("serial", serial);
		return mybatis.update("MyPage.couponRegist", param);
	}

	

	public List<ExProticketDTO> ExProTicket(String email) {
		return mybatis.selectList("MyPage.ExProTicket",email);
	}

	public ProticketDTO proTicketDetailview(String pro_booknumber) {
		return mybatis.selectOne("MyPage.proTicketDetailview",pro_booknumber);
	}
}
