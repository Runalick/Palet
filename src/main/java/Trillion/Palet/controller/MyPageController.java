package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CancelListDTO;
import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.PayDTO;
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
		
		String url = "http://14.39.252.82/Exhibition/toCurdetail";
		// 큐알코드 생성 url ip부분은 추후 서버 ip로 변경해야됨
		ExticketDTO dto = mServ.myTicketDetailview(et_booknumber);
		CouponDTO cdto = cServ.getCouponName(dto.getEt_cpserial());
		model.addAttribute("url",url);
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
	//취소환불
	@RequestMapping("refund")
	public String refund(Model model) {
		String email = (String)session.getAttribute("loginEmail");
		List<CancelListDTO> list = mServ.CancelList(email);
		for(CancelListDTO dto : list){
			System.out.println(dto.getTitle());
			System.out.println(dto.getState());
			System.out.println(dto.getCategory());
		}
		model.addAttribute("list",list);
		return "/mypage/refund";
	}
	//취소환불 ajax
	@ResponseBody
	@RequestMapping("refundajax")
	public List<CancelListDTO> refundajax(Model model,String btn) {
		String email = (String)session.getAttribute("loginEmail");
		List<CancelListDTO> list = mServ.refundajax(email,btn);
		for(CancelListDTO dto : list){
			System.out.println(dto.getTitle());
			System.out.println(dto.getState());
			System.out.println(dto.getCategory());
		}
		model.addAttribute("list",list);
		return list;
	}
	
	
	// Shopping
	@RequestMapping("myShopping")
	public String myShopping(Model model) {
		String email = (String)session.getAttribute("loginEmail");
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
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping("myShoppingDetail")
	public String myShoppingDetail(String merchant_uid, Model model) {
		System.out.println(merchant_uid);
		String email = (String)session.getAttribute("loginEmail");
		PayDTO detail = mServ.myShoppingDetailView(merchant_uid);
		Object product = mServ.myShoppingProduct(merchant_uid);
		String name = mServ.memberName(email);
		System.out.println(product);
		
		model.addAttribute("detail",detail);
		model.addAttribute("product",product);
		model.addAttribute("name",name);
		return "/mypage/myShoppingDetailView";
	}
	
	// 주문완료 -> 배송 중 (1일뒤)
	@ResponseBody
	@RequestMapping("changeStateCU")
	public void changeStateCU(String merchant_uid) {
		mServ.changeStateCU(merchant_uid);
	}
	
	// 배송 중 -> 배송완료 (주문완료 3일 뒤)
	@ResponseBody
	@RequestMapping("changeStateAU")
	public void changeStateAU(String merchant_uid) {
		mServ.changeStateAU(merchant_uid);
	}
	
	
	
	
}
