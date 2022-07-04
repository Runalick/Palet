package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.DeliveryDTO;
import Trillion.Palet.service.DeliveryService;



@Controller
@RequestMapping("/delivery/")
public class DeliveryController {

	@Autowired
	private DeliveryService dServ;
	
	@RequestMapping("delivery")
	public String delivery(Model model,String choose) {
		String email = "i2376@naver.com";
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
			String email = "i2376@naver.com";
			DeliveryDTO dto = dServ.selectAddress(deliveryaddress_seq,email);
			model.addAttribute("modiAddress",dto);

			return "/delivery/NewAddress";
		}
		
	}
	
	@RequestMapping("insertModiNewAddress")
	public String insertModiNewAddress(DeliveryDTO dto,String modi) {
//		System.out.println(dto.getName());
		dto.setEmail("i2376@naver.com");
		
		if(dto.getDefaultaddress()==null) {
			dto.setDefaultaddress("N");
		}
		
		
		if(modi.equals("false")) {
			if(dto.getDefaultaddress().equals("Y")) {
				dServ.insertNewDefaultAddress(dto);
			}else {
				dServ.insertNewAddress(dto);
			}
		}else if(modi.equals("true")) {
			System.out.println(dto.getName());
			System.out.println(dto.getDefaultaddress());
			System.out.println(dto.getReceiver());
			System.out.println(dto.getPostcode());
			System.out.println(dto.getAddress1());
			System.out.println(dto.getAddress2());
			System.out.println(dto.getPhone());
			System.out.println(dto.getEmail());
			
			int result = dServ.updateAddress(dto);
			System.out.println(result);
		}
		return "redirect:delivery?choose=false";
	}
	
	@RequestMapping("chooseAddress")
	public String chooseAddress(Model model) {
		
		String email = "i2376@naver.com";
		List<DeliveryDTO> list = dServ.chooseAddress(email);
		model.addAttribute("list",list);
		return "/delivery/chooseAddress";
	}
	
	@ResponseBody
	@RequestMapping("delAddress")
	public int delAddress(int deliveryaddress_seq) {
		return dServ.delAddress(deliveryaddress_seq);
	}
}
