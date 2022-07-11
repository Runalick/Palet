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
		int cnt = mServ.myTicketcnt(email);
		List<ExticketDTO> list =mServ.myTicket(email);
		model.addAttribute("list",list);
		model.addAttribute("cnt",cnt);
		return "/mypage/myTicket";
	}
}
