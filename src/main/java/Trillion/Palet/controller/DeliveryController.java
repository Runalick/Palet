package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.DeliveryDTO;
import Trillion.Palet.service.DeliveryService;
import Trillion.Palet.service.MemberService;



@Controller
@RequestMapping("/delivery/")
public class DeliveryController {

	@Autowired
	private DeliveryService dServ;
	@Autowired
	private HttpSession session;
	@Autowired
	private MemberService mServ;
	
	@RequestMapping("delivery")
	public String delivery(Model model,String choose) {
		String email = (String)session.getAttribute("loginEmail");
		System.out.println(choose);
		
		if(choose.equals("false")) {
		DeliveryDTO dto = dServ.selectDefaultAddress(email);
		model.addAttribute("DefaultAddress",dto);
		}else {
			int deliveryaddress_seq=Integer.parseInt(choose);
			DeliveryDTO dto = dServ.selectAddress(deliveryaddress_seq,email);
			model.addAttribute("DefaultAddress",dto);
		}
		return "/delivery/delivery";
	}
	
	@RequestMapping("insertAddress")
	public String insertAddress(int deliveryaddress_seq,Model model) {
		if(deliveryaddress_seq==0) {
			return "/delivery/NewAddress";
		}else {
			String email = (String)session.getAttribute("loginEmail");
			DeliveryDTO dto = dServ.selectAddress(deliveryaddress_seq,email);
			model.addAttribute("modiAddress",dto);

			return "/delivery/NewAddress";
		}
		
	}
	
	@RequestMapping("insert")
	public String insert() {
		return "/mypage/insertAddress";
	}
	@RequestMapping("modi")
	public String modi(int deliveryaddress_seq,Model model) {
		String email = (String)session.getAttribute("loginEmail");
		DeliveryDTO dto = dServ.selectAddress(deliveryaddress_seq, email);
		model.addAttribute("modi",dto);
		return  "/mypage/insertAddress";
	}
	@ResponseBody
	@RequestMapping("insertModiNewAddress")
	public String insertModiNewAddress(DeliveryDTO dto,String modi) {
		System.out.println(dto.getName());
		String email = (String)session.getAttribute("loginEmail");
		dto.setEmail(email);
		String name = mServ.getName(email);
		dto.setName(name);
		
	
		
		
		if(modi.equals("false")) {
			if(dto.getDefaultaddress().equals("Y")) {
				dServ.insertNewDefaultAddress(dto);
			}else {
				dServ.insertNewAddress(dto);
			}
		}else if(modi.equals("true")) {
			if(dto.getDefaultaddress().equals("Y")) {
				dServ.ModiDefaultAddress(dto);
			}else {
				int result = dServ.updateAddress(dto);
			}
			
			
			
		}
		return "success";
	}
	
	@RequestMapping("selectAllAddress")
	public String selectAllAddress(Model model) {
		
		String email = (String)session.getAttribute("loginEmail");
		//default 주소 제외 
		List<DeliveryDTO> list = dServ.selectAllAddress(email);
		DeliveryDTO defaultAddress= dServ.selectDefaultAddress(email);
		model.addAttribute("list",list);
		model.addAttribute("defaultAddress",defaultAddress);
		return "/mypage/delivery";
	}
	
	@ResponseBody
	@RequestMapping("delAddress")
	public int delAddress(int deliveryaddress_seq) {
		return dServ.delAddress(deliveryaddress_seq);
	}
	
	//주소 수정 할 때 기본주소지 한개 무조건 있게 만들기
	@ResponseBody
	@RequestMapping("checkdefaultAddress")
	public boolean checkdefaultAddress() {
		String email = (String)session.getAttribute("loginEmail");
		boolean result = dServ.checkdefaultAddress(email);
		return  result;
	}
	//주소 등록
	@ResponseBody
	   @RequestMapping("newcheckdefaultAddress")
	   public boolean newcheckdefaultAddress() {
	      String email = (String)session.getAttribute("loginEmail");
	      
	      return  dServ.newcheckdefaultAddress(email);
	   }
	
	@ResponseBody
	@RequestMapping("checkcount")
	public boolean checkcount() {
		String email = (String)session.getAttribute("loginEmail");
		int result = dServ.checkcount(email);
		if(result<=4) {
			return true;
		}else {
			return false;
		}
	}
	
}
