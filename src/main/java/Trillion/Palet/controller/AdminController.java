package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.MemberService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private MemberService mServ;
	
	@Autowired
	private ExhibitionService eServ;
	
	@RequestMapping("adminMain")
	public String adminMain() {
		return "/admin/adminMain";
	}
	
	@RequestMapping("adminMembers")
	public String adminMembers(Model model, int cpage) {
		List<MemberDTO> mdto = mServ.memberSelectByPage(cpage);
		String pageNavi = mServ.getMemberPageNavi(cpage);
		model.addAttribute("list", mdto);
		model.addAttribute("navi", pageNavi);
		return "/admin/adminMembers";
	}
	
	@RequestMapping("adminExhibitions")
	public String adminExhibitions() {
		return "/admin/adminExhibitions";
	}
	
	@RequestMapping(value="exhibitionsInsert", produces="test/html;charset=utf8")
	public String exhibitionsInsert(ExhibitionDTO edto) {
		System.out.println(edto.getE_name() +" : "+ edto.getStart_date() +" : "+ edto.getEnd_date() + " : " +edto.getE_price());
		eServ.exhibitionInsert(edto);
		return "redirect:adminExhibitions";
	}
	
	
}
