package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.PayDTO;
import Trillion.Palet.service.MypageService;

@Controller
@RequestMapping("/mypage/")
public class MyPageController {

	@Autowired
	private MypageService mServ;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("outline")
	public String outline() {
		
		return "/mypage/outline";
	}
	@RequestMapping("main")
	public String main() {
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
		List<ExticketDTO> prelist =mServ.premyTicket(email);
		int precnt = mServ.premyTicketcnt(email);
		
		//현재전시
		model.addAttribute("list",list);
		model.addAttribute("prelist",prelist);
		//지난전시
		model.addAttribute("cnt",cnt);
		model.addAttribute("precnt",precnt);
		model.addAttribute("url",url);
		return "/mypage/myTicket";
	}
	@RequestMapping("myTicketDetailview")
	public String myTicketDetailview(String et_booknumber,Model model) {
		
		ExticketDTO dto = mServ.myTicketDetailview(et_booknumber);
		model.addAttribute("dto",dto);
		return "/mypage/myTicketDetailview";
	}
	
	@RequestMapping("detailShopping")
	public String myShopping(Model model) {
		//String email = (String)session.getAttribute("loginEmail");
		String email = "iampost@siot.do";
		List<PayDTO> list = mServ.myShopping(email);
		model.addAttribute("list",list);
		return "/mypage/myShopping";
	}
	
	
	
}
