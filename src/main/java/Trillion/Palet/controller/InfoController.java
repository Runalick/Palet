package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.FaqDTO;
import Trillion.Palet.service.InfoService;

@Controller
@RequestMapping("/info/")
public class InfoController {

	@Autowired
	private InfoService iserv;
	
	@RequestMapping("email")
	public String WriteEmail(Model model) {
		
		List<FaqDTO> list=iserv.selectAll();
		model.addAttribute("list",list);
		return "/info/email";
	}
	
	@RequestMapping("userEmail")
	public String userEmail(String userEmail,String title ,String contents) {
		
		iserv.userEmail(userEmail, title, contents);
		return "/info/success";
	}
	
	@RequestMapping("faqdel")
	public String faqdel(int faq_seq) {
		System.out.println(faq_seq);
		
		iserv.faqdel(faq_seq);
		return "redirect:email";
	}
	
	
	@RequestMapping("faqmodi")
	public String faqmodi(int faq_seq,String title, String contents) {
		
		return "redirect:email";
	}
	
	@RequestMapping("faqInsert")
	public String faqInsert(FaqDTO dto) {
		
		iserv.faqInsert(dto);
		return "redirect:email";
	}
}
