package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.PreExhibitionDTO;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.GoodsService;

@Controller
public class HomeController {
	
	@Autowired
	private HttpSession session;
	@Autowired
	private GoodsService gServ;
	@Autowired
	private ExhibitionService eServ;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		String loginEmail = (String) session.getAttribute("loginEmail");
		model.addAttribute("loginEmail", loginEmail);
		
		//굿즈 탑6
		List<GoodsDTO> dto = gServ.gettop6goods();
		model.addAttribute("dto",dto);
		//전시 최신3
		List<PreExhibitionDTO> edto = eServ.getlatest3();
		System.out.println(edto);
		for(PreExhibitionDTO list : edto) {
			System.out.println(list.getPe_artcount());
			
		}
		model.addAttribute("edto",edto);
		return "home";
	}
	
	@RequestMapping("about")
	public String about() {
		return"/about/about";
	}
	
}
