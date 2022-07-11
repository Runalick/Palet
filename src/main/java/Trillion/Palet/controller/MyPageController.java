package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.service.MypageService;

@Controller
@RequestMapping("/mypage/")
public class MyPageController {

	@Autowired
	private MypageService mServ;
	
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
		String email = "first0627@hanmail.net";
//		String email = "i2376@naver.com";
		String url = "http://14.39.252.82/Exhibition/toCurdetail";
		// 큐알코드 생성 url ip부분은 추후 서버 ip로 변경해야됨
		int cnt = mServ.myTicketcnt(email);
		List<ExticketDTO> list =mServ.myTicket(email);
		model.addAttribute("list",list);
		model.addAttribute("cnt",cnt);
		model.addAttribute("url",url);
		return "/mypage/myTicket";
	}
	@RequestMapping("myTicketDetailview")
	public String myTicketDetailview() {
		return "/mypage/myTicketDetailview";
	}
	
}
