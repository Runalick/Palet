package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.service.AdminService;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.MemberService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private MemberService mServ;
	
	@Autowired
	private ExhibitionService eServ;
	
	@Autowired
	private AdminService aServ;
	
	@RequestMapping("adminMain")
	public String adminMain() {
		return "/admin/adminMain";
	}
	
	@RequestMapping("adminMembers")
	public String adminMembers(Model model, int cpage) {
		List<MemberDTO> mdto = aServ.memberSelectByPage(cpage);
		String pageNavi = aServ.getMemberPageNavi(cpage);
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
		System.out.println(edto.getE_name() +" : "+ edto.getStart_date() +" : "+ edto.getEnd_date() + " : " +edto.getE_price() + " : " + edto.getE_period());
		eServ.exhibitionInsert(edto);
		return "redirect:adminExhibitions";
	}
	
	@RequestMapping("adminExhibitionList")
	public String adminExhibitionList(Model model, int cpage) {
		List<ExhibitionDTO> edto = aServ.exhibitionSelectByPage(cpage);
		String pageNavi = aServ.getExhibitionPageNavi(cpage);
		model.addAttribute("list", edto);
		model.addAttribute("navi", pageNavi);
		return "/admin/adminExhibitionList";
	}
	
	@ResponseBody
	@RequestMapping(value="exhibitionCheckDelete", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int exhibitionCheckDelete(@RequestParam(value="checkboxArr[]") List<String> checkboxArr) throws Exception {
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr) {
			checkNum = str;
			System.out.println(str);
			int e_num = Integer.parseInt(checkNum);
			eServ.exhibitionCheckDelelte(e_num);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="exhibitionCheckUpdate", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int exhibitionCheckUpdate(@RequestParam(value="checkboxArr2[]") List<String> checkboxArr2, String e_period) throws Exception {
		System.out.println(e_period);
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr2) {
			checkNum = str;
			System.out.println(str);
			
			eServ.exhibitionCheckUpdate(checkNum, e_period);
		}
		return result;
	}
	
	
}
