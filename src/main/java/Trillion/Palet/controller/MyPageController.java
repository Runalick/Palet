package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.service.CouponService;
import Trillion.Palet.service.MemberService;
import Trillion.Palet.service.MypageService;

@Controller
@RequestMapping("/mypage/")
public class MyPageController {

	@Autowired
	private MypageService mServ;
	
	@Autowired
	private MemberService memServ;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CouponService cServ;
	
	@RequestMapping("outline")
	public String outline() {
		
		return "/mypage/outline";
	}
	@RequestMapping("main")
	public String main(Model model) {
		String email = (String)session.getAttribute("loginEmail");
		MemberDTO dto = memServ.getmember(email);
		model.addAttribute("dto",dto);
		return "/mypage/MyPageMain";
	}
	
	@RequestMapping("myTicket")
	public String myTicket(Model model) {
		String email = (String)session.getAttribute("loginEmail");
//		String email = "i2376@naver.com";
		String url = "http://14.39.252.82/Exhibition/toCurdetail";
		// 큐알코드 생성 url ip부분은 추후 서버 ip로 변경해야됨
		int cnt = mServ.myTicketcnt(email);
		List<ExticketDTO> list =mServ.myTicket(email);
		
		int precnt = mServ.premyTicketcnt(email);
		
		//현재전시
		model.addAttribute("list",list);
	
		//지난전시
		model.addAttribute("cnt",cnt);
		model.addAttribute("precnt",precnt);
		model.addAttribute("url",url);
		return "/mypage/myTicket";
	}
	@ResponseBody
	@RequestMapping("mypreTicket")
	public List<ExticketDTO> mypreTicket(int limit) {
		String email = (String)session.getAttribute("loginEmail");
		List<ExticketDTO> prelist =mServ.premyTicket(email,limit);
		return prelist;
	}
	
	
	@RequestMapping("myTicketDetailview")
	public String myTicketDetailview(String et_booknumber,Model model) {
		
		ExticketDTO dto = mServ.myTicketDetailview(et_booknumber);
		CouponDTO cdto = cServ.getCouponName(dto.getEt_cpserial());
		model.addAttribute("dto",dto);
		model.addAttribute("cdto",cdto);
		return "/mypage/myTicketDetailview";
	}
	
	
	@ResponseBody
	@RequestMapping("payCancel")
	public String payCancel(CancelDTO dto) {

		if(dto.getContent()=="") {
			dto.setContent("취소 사유 없음");
		}
		System.out.println(dto.getContent());
		System.out.println(dto.getBooknumber());
		System.out.println(dto.getCategory());
		mServ.payCancel(dto);
		return "success";
	}
	
	// Shopping
	@RequestMapping("myShopping")
	public String myShopping(Model model) {
		//String email = (String)session.getAttribute("loginEmail");
		String email = "maisy40@naver.com";
//		List<Object> list = mServ.myShopping(email);
//		System.out.println(list);
//		model.addAttribute("list",list);
		model.addAttribute("email",email);
		return "/mypage/myShopping";
	}
	
	@ResponseBody
	@RequestMapping("ShoppingList")
	public List<Object> ShopingList(int limit, String email) {
		List<Object> list = mServ.myShopping(limit, email);
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("myShoppingDetail")
	public void myShoppingDetail(String merchant_uid) {
		mServ.myShoppingDetailView(merchant_uid);
	}
	
	
}
