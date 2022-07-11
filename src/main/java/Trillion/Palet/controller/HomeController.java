package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		String loginEmail = (String) session.getAttribute("loginEmail");
		model.addAttribute("loginEmail", loginEmail);
		return "home";
	}
	
	@RequestMapping("about")
	public String about() {
		return"/about/about";
	}
	
}
