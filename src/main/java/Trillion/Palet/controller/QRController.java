package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.ExticketDTO;
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
		return "/qr/qrcode";
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
		return "/qr/qrcode";
	}
	@RequestMapping("now")
	public String now(Model model,int e_num) throws Exception{
		ExhibitionDTO edto = qser.getNowExhibition(e_num);
		String e_name = edto.getE_name();
		int price = edto.getE_price();
		String url = "http://14.39.252.82/Exhibition/toCurdetail";
		return "/qr/now";
	}
	
	@RequestMapping("useticket")
	public String useticket(Model model,String et_booknumber) throws Exception{
		String email= (String)session.getAttribute("loginEmail");
		String result = "loginplz";
		if(email==null) {
			result="loginplz";
		}else if(email.equals("admin@palet.com")) {
			ExticketDTO tdto = tser.isuseticket(et_booknumber);
			String et_state = tdto.getEt_state();
			
			if(et_state.equals("BU")) {
				tser.useticket(et_booknumber);
				result="bu";
			}else if(et_state.equals("BC")) {
				result="bc";
			}else if(et_state.equals("AU")) {
				result="au";
			}else if(et_state.equals("AC")) {
				result="ac";
			}
		}else if(!email.equals("admin@palet.com")) {
			result= "adminOnly";
		}else{
			result= "loginplz";
		}
		model.addAttribute("result",result);
		return "/qr/result";
	}

}
