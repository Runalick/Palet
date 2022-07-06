package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.TicketDTO;
import Trillion.Palet.service.QrcordService;
import Trillion.Palet.service.TicketService;

@Controller
@RequestMapping("/qr/")
public class QRController {

	@Autowired
	QrcordService qser;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	TicketService tser;
	
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
	
	@RequestMapping("ticketqr")
	public String ticketqr(Model model) throws Exception{
//		String email= (String)session.getAttribute("loginEmail");
		String email= "testeamil@eamil.com";
		TicketDTO dto =tser.getmyticket(email);
		String serial = dto.getSerial();
		String ename = dto.getE_name();
		String price = dto.getE_price();
		String use = dto.getUseable();
		model.addAttribute("url","http://14.39.252.82/qr/ticketqr?serial="+serial+"&ename="+ename
				+"&price="+price+"&use="+use);
		return "/test/qrcode";
	}
}
