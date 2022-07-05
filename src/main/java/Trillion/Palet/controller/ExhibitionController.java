package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.PreExhibitionDTO;
import Trillion.Palet.service.PreExhibitionService;

@Controller
@RequestMapping("/Exhibition/")
public class ExhibitionController {
	
	@Autowired
	private PreExhibitionService ServPe;
	
	@RequestMapping("toCurExhibition")
	public String toCurExhibition() {
		return "/exhibition/curexhibition";
	}
	
	
	@RequestMapping("toPreExhibition")
	public String toPreExhibition(Model model) {
		List<PreExhibitionDTO> list = ServPe.selectAll();
		model.addAttribute("list", list);
			
		
		
		return "/exhibition/preexhibition";
	}
	
	@RequestMapping("toBook")
	public String toBook() {
	
		
		
		return "/exhibition/book";
	}
	
	@RequestMapping("toCurdetail")
	public String toCurdetail() {
	
		
		
		return "/exhibition/curdetail";
	}
	
	@RequestMapping("toUpcommingExhibition")
	public String toUpcommingExhibition() {
	
		
		
		return "/exhibition/upcommingexhibition";
	}
	
	
	

	
	

}
