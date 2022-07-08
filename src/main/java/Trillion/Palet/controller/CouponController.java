package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.service.CouponService;

@Controller
@RequestMapping("/coupon/")
public class CouponController {
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CouponService cser;
	
	@RequestMapping("Registration")
	@ResponseBody
	public String Registration(String serial) throws Exception{
		String email = (String) session.getAttribute("loginEmail");
		CouponDTO dto = cser.isusecoupon(serial);
		//쿠폰 사용여부 확인
		if(dto.getEmail()==null&&(dto.getUse()=="N"||dto.getUse()==null)) {
			cser.userupdate(serial,email);
			return "registration";
		}
		if(dto.getUse()=="Y") {
			return "use";
		}
		if(!(dto.getEmail()==null)) {
			return "noregistration";
		}
		return "false";
	}
	@RequestMapping("toregistration")
	public String toregistartion() throws Exception{
		return "/mypage/couponRegistration";
	}
	@RequestMapping("couponlist")
	public String couponlist(Model model) throws Exception{
		String email = (String) session.getAttribute("loginEmail");
		List<CouponDTO> list = cser.selectall(email);
		model.addAttribute("list", list);
		return "/mypage/couponlist";
	}
	
	@RequestMapping("make")
	@ResponseBody
	public String make(int number,String dc,String category) throws Exception{
		cser.make(number,dc,category);
		return "makeok";
	}
}
