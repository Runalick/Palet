package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.PayDTO;

@Controller
@RequestMapping("/pay/")
public class PayController {
	
	@Autowired
	private PayService pServ;
	
	@ResponseBody
	@RequestMapping("insert")
	public List<PayDTO> insert(PayDTO dto) {
		return pServ.insert(dto);
		
	}
}
