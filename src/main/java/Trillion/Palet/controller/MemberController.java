package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
	@RequestMapping(value="emailDuplCheck", produces="test/html;charset=utf8") 
	public String emailDuplCheck(String email) throws Exception{
		boolean result = mServ.isEmailExist(email);
		return String.valueOf(result);
	}
	
	@RequestMapping("signup")
	public String signup(MemberDTO dto) throws Exception{
		mServ.join(dto);
		return "redirect:/";
	}
	
	@RequestMapping("login")
	public String login(String id, String pw) throws Exception{
		boolean result = mServ.login(id,pw);
		if(result) {
			session.setAttribute("loginID", id);
		}
		return "redirect:/";
	}
	
	@RequestMapping("logout")
	public String logout() throws Exception{
		session.invalidate();
		//session.removeAttribute(null);
		return "redirect:/";
	}
	
	@RequestMapping("changepw")
	public String changepw(MemberDTO dto) throws Exception{
		mServ.changepw(dto);
	 return "redirect:/"; //임시로 메인으로 이동
	}
	
	@RequestMapping("mypage")
	public String myapge(Model model) throws Exception{
		MemberDTO dto = mServ.getmember((String)session.getAttribute("loginID"));
		model.addAttribute("dto",dto);
		return "/mypage/mypage";
	}
	@RequestMapping("insert")
	public String insert(MemberDTO dto) throws Exception{
		mServ.insert(dto);
		return "/mypage/mypage";
	}
	@RequestMapping("changemypage")
	public int changemypage(MemberDTO dto) throws Exception{
		return mServ.changemypage(dto);
	}
	@RequestMapping("memberout")
	public int memberout(MemberDTO dto) throws Exception{
		return mServ.memberout(dto);
	}
	
	@PostMapping("modipw")
	public int modipw(String pw)throws Exception{
		String id = (String)session.getAttribute("loginID");
		return mServ.modipw(id,pw);
	}
	@PostMapping("modiname")
	public int modiname(String name)throws Exception{
		String id = (String)session.getAttribute("loginID");
		return mServ.modiname(id,name);
	}
	@PostMapping("modiphone")
	public int modiphone(String phone)throws Exception{
		String id = (String)session.getAttribute("loginID");
		return mServ.modiphone(id,phone);
	}
	@PostMapping("modiaddress")
	public int modiaddress(String postcode,String address1,String address2) throws Exception{
		String id = (String)session.getAttribute("loginID");
		return mServ.modiaddress(id,postcode,address1,address2);
	}
}