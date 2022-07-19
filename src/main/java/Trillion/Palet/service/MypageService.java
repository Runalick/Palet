package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.MypageDAO;
import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CancelListDTO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.MypageUserDetailDTO;
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

	public PayDTO myShoppingDetailView(String merchant_uid) {
		return mdao.myShoppingDetailView(merchant_uid);
	}

	public List<CancelListDTO> CancelList(String email) {
		return mdao.CancelList(email);
	}
		
	public Object myShoppingProduct(String merchant_uid) {
		return mdao.myShoppingProduct(merchant_uid);
	}

	public String memberName(String email) {
		return mdao.memberName(email);
	}

	public int changeStateCU(String merchant_uid) {
		return mdao.changeStateCU(merchant_uid);
	}

	public int changeStateAU(String merchant_uid) {
		return mdao.changeStateAU(merchant_uid);
	}

	public List<CancelListDTO> refundajax(String email, String btn) {
		return mdao.refundajax(email,btn);
	}
	
	public List<MypageUserDetailDTO> selectMyCoupon(String email) {
		return mdao.selectMyCoupon(email);
	}
	
	public List<MypageUserDetailDTO> selectMyCouponStatus(String email, String used) {
		return mdao.selectMyCouponStatus(email, used);
	}
	

	public List<MypageUserDetailDTO> selectMyexhibition(String email) {
		return mdao.selectMyexhibition(email);
	}
	
	public List<MypageUserDetailDTO> selectMyGoods(String email) {
		return mdao.selectMyGoods(email);
	}
 
	
}
