package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.service.CouponService;
import Trillion.Palet.service.MemberService;
import Trillion.Palet.service.PreExhibitionService;

@Controller
@RequestMapping("/program/")
public class ProgramController {

	@Autowired
	private PreExhibitionService ServPe;
	
	@Autowired
	private MemberService ServMe;
	
	@Autowired
	private CouponService ServCo;
	

	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("toProgram")
	public String toCurExhibition() {
		return "/program/class";
	}
	
	
	@RequestMapping("toClassdetail")
	public String toClassdetail() {
		return "/program/classdetail";
	}
	
	@RequestMapping("toApply")
	public String toApply(Model model,String count, String price) throws Exception {
		String email = (String)session.getAttribute("loginEmail");
		MemberDTO mdto = ServMe.getmember(email);
		List<CouponDTO> clist = ServCo.selectall(email);
		
		System.out.println(email);
		System.out.println(price);
		System.out.println(count);
		System.out.println(mdto.getPoint());
		System.out.println(mdto.getGrade());
		
		
		model.addAttribute("loginEmail", email);
		model.addAttribute("count", count);
		model.addAttribute("price", price);
		model.addAttribute("mdto",mdto);
		model.addAttribute("clist",clist);
		
		
		return "/program/apply";
	}
	
	@RequestMapping("toUpcommingExhibition")
	public String toUpcommingExhibition() {
	
		
		
		return "/exhibition/upcommingexhibition";
	}
	
	@RequestMapping("applysuccess")
	public String applysuccess() {
		return "/program/applysuccess";
	}
	
	
	
	
}
