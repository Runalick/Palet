package Trillion.Palet.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.PayDTO;
import Trillion.Palet.DTO.ProticketDTO;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.MemberService;
import Trillion.Palet.service.PayService;
import Trillion.Palet.service.ProgramService;

@Controller
@RequestMapping("/pay/")
public class PayController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private PayService pServ;
	
	@Autowired
	private ExhibitionService eServ;

	@Autowired
	private ProgramService proServ;
	
	@Autowired
	private MemberService mServ;
	

	@ResponseBody
	@RequestMapping("insert")
	public List<PayDTO> insert(PayDTO dto) {
		String email = (String)session.getAttribute("loginEmail");
		dto.setEmail(email);
		return pServ.insert(dto);
		
	}
	
	
	@ResponseBody
	@RequestMapping("insertEx")
	public List<ExticketDTO> insertEx (ExticketDTO dto) {
	
		
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
		System.out.println(	dto.getEt_usedpoint());
		System.out.println(	dto.getEt_cpdiscount());
		System.out.println(	dto.getEt_cpserial());
		System.out.println(	dto.getEt_buydate());
		System.out.println(	dto.getEt_category());
	    int result = pServ.insertEx(dto);
	    int result1 = eServ.updateSalesCount(dto.getEt_title(),dto.getEt_count());
	    int result2 = mServ.updatePoint(dto.getEt_point(),dto.getEt_usedpoint(),dto.getEt_email());
	
		 List<ExticketDTO> list = new ArrayList<ExticketDTO>();
		
		
		return list;
		
		
	}
	
	@ResponseBody
	@RequestMapping("insertPro")
	public List<ProticketDTO> insertPro(ProticketDTO dto) {
	
		
		System.out.println(	dto.getPro_email());
		System.out.println(	dto.getPro_title());
		System.out.println(	dto.getPro_place());
		System.out.println( dto.getPro_date());
		System.out.println(	dto.getPro_booknumber());
		System.out.println(	dto.getPro_state());
		System.out.println(	dto.getPro_username());
		System.out.println(	dto.getPro_phone());
		System.out.println( dto.getPro_paymethod());
		System.out.println(	dto.getPro_cost());
		System.out.println(	dto.getPro_count());
		System.out.println(	dto.getPro_point());
		System.out.println(	dto.getPro_usedpoint());
		System.out.println(	dto.getPro_cpdiscount());
		System.out.println(	dto.getPro_cpserial());
		System.out.println(	dto.getPro_buydate());
		System.out.println(	dto.getPro_category());
	    int result = pServ.insertPro(dto);
	    int result1 = proServ.updateSalesCount(dto.getPro_title(),dto.getPro_count());
	    int result2 = mServ.updatePoint(dto.getPro_point(),dto.getPro_usedpoint(),dto.getPro_email());
	
		 List<ProticketDTO> list = new ArrayList<ProticketDTO>();
		
		
		return list;
		
		
	}
}
