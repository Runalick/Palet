package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/program/")
public class ProgramController {

	

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
	
	
}
