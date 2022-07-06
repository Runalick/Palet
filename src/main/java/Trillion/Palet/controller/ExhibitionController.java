package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	
	@ResponseBody
	@RequestMapping("contents")
	public List<PreExhibitionDTO> list(int limit) throws Exception {
	
		List<PreExhibitionDTO> list =  ServPe.chooseAll(limit);

		// 디스패처는 리턴타임 몇개없음 그래서 gson 써야 list 리턴 가능
//		String result = g.toJson(list);
//		System.out.println(result);
//	
//		
//		return String.valueOf(result);
		return list;
	}
	
	
	@RequestMapping("toBook")
	public String toBook() {
	
		
		
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
