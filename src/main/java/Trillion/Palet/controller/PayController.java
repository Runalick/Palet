package Trillion.Palet.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.service.PayService;

@Controller
@RequestMapping("/pay/")
public class PayController {
	
	@Autowired
	private PayService pServ;
	

//	@ResponseBody
//	@RequestMapping("insert")
//	public List<PayDTO> insert(PayDTO dto) {
//		return pServ.insert(dto);
//		
//	}
	
	
	@ResponseBody
	@RequestMapping("insert")
	public List<ExticketDTO> insert(ExticketDTO dto) {
	    int result = pServ.insert(dto);
		
		System.out.println(	dto.getEt_email());
		System.out.println(	dto.getEt_title());
		System.out.println(	dto.getEt_place());
		System.out.println( dto.getEt_date());
		System.out.println(	dto.getEt_booknumber());
		System.out.println(	dto.getEt_state());
		System.out.println(	dto.getEt_username());
		System.out.println(	dto.getEt_phone());
		System.out.println( dto.getEt_paymethod());
		System.out.println(	dto.getEt_cost());
		System.out.println(	dto.getEt_count());
		System.out.println(	dto.getEt_point());
		System.out.println(	dto.getEt_buydate());
	
		 List<ExticketDTO> list = new ArrayList<ExticketDTO>();
		
		
		return list;
		
		
	}
}
