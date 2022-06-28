package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.service.MemberService;


@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService mServ;
	
	@Autowired
	private HttpSession session;

	@RequestMapping("join")
	public String toJoin() {
		return "/member/join";
	}
	
	@ResponseBody 
	@RequestMapping("emailDuplCheck") 
	public String emailDuplCheck(String email) throws Exception{
		boolean result = mServ.isEmailExist(email);
		return String.valueOf(result);
	}
	
	@RequestMapping("loginPage")
	public String loginPage() throws Exception {
		return "/member/login";
	}
	
	@RequestMapping(value="signup", produces="test/html;charset=utf8")
	public String signup(MemberDTO dto) throws Exception{
		mServ.join(dto);
		return "redirect:/";
	}
	
	@RequestMapping("login")
	public String login(String email, String pw) throws Exception{
		boolean result = mServ.login(email,pw);
		if(result) {
			session.setAttribute("loginEmail", email);
		}
		return "redirect:/";
	}
	
	@RequestMapping("logout")
	public String logout() throws Exception{
		session.invalidate();
		//session.removeAttribute(null);
		return "redirect:/";
	}
}