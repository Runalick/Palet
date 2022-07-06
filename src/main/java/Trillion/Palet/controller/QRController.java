package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.service.QrcordService;

@Controller
@RequestMapping("/qr/")
public class QRController {

	@Autowired
	QrcordService qser;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("needqr")
	public String needqr(Model model) throws Exception{
		String email= (String)session.getAttribute("loginEmail");
		model.addAttribute("url", "http://14.39.252.82/qr/qrtest?email="+email);
		return "/test/qrcode";
	}
	@RequestMapping(value="qrtest")
	public String qrtest(String email,String name) throws Exception{
		return "";
	}
}
