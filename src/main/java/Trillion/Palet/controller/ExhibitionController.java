package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.PreExhibitionDTO;
import Trillion.Palet.service.CouponService;
import Trillion.Palet.service.MemberService;
import Trillion.Palet.service.PreExhibitionService;


@Controller
@RequestMapping("/Exhibition/")
public class ExhibitionController {
	
	@Autowired
	private PreExhibitionService ServPe;
	
	@Autowired
	private MemberService ServMe;
	
	@Autowired
	private CouponService ServCo;
	

	@Autowired
	private HttpSession session;
	
	@RequestMapping("toCurExhibition")
	public String toCurExhibition() {
		return "/exhibition/curexhibition";
	}
	
	
	@RequestMapping("toPreExhibition")
	public String toPreExhibition(Model model) {
//		List<PreExhibitionDTO> list = ServPe.selectAll();
//		model.addAttribute("list", list);
			
		
		
		return "/exhibition/preexhibition";
	}
	
	
	
	
	@ResponseBody
	@RequestMapping("contents")
	public List<PreExhibitionDTO> list(int limit) throws Exception {
	
		List<PreExhibitionDTO> list =  ServPe.chooseAll(limit);
		System.out.println("dmd");
		for (PreExhibitionDTO p : list) {
		
			System.out.println(p.getPe_seq());
		}

		// 디스패처는 리턴타임 몇개없음 그래서 gson 써야 list 리턴 가능
//		String result = g.toJson(list);
//		System.out.println(result);
//	
//		
//		return String.valueOf(result);
		return list;
	}
	
	
	@RequestMapping("toBook")
	public String toBook(Model model,String count, String price) throws Exception {
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
		
		return "/exhibition/book";
	}
	
	@RequestMapping("toCurdetail")
	public String toCurdetail() {
		return "/exhibition/curdetail";
	}
	

	@RequestMapping(value = "toPredetail", method = RequestMethod.GET)
	public String toPredetail(String pe_img, Model model) {
		System.out.println(pe_img);
		PreExhibitionDTO dto = ServPe.preDetail(pe_img);
		model.addAttribute("dto",dto);
		
		return "/exhibition/predetail";
	}
	
	@RequestMapping("toUpcommingExhibition")
	public String toUpcommingExhibition() {
	
		
		
		return "/exhibition/upcommingexhibition";
	}
	
	
	

	
	

}
