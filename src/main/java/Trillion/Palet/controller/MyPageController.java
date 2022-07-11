package Trillion.Palet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/")
public class MyPageController {


	@RequestMapping("outline")
	public String outline() {
		
		return "/mypage/outline";
	}
	
}
