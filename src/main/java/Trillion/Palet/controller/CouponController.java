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
		if(dto==null) {
			return "false";
		}
		//쿠폰 존재 여부 확인
		if(dto.getUsed()=="Y") {
			return "use";
		}
		//쿠폰 사용 여부 확인
		if(!(dto.getEmail()==null)) {
			return "noregistration";
		}
		//쿠폰 등록 여부 확인
		if(dto.getEmail()==null&&(dto.getUsed().charAt(0)=='N'||dto.getUsed().charAt(0)=='n'||dto.getUsed()==null)) {
			cser.userupdate(serial,email);
			return "registration";
		}
		//쿠폰 등록
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
	public int make(int number,String dc,String category) throws Exception{
		cser.make(number,dc,category);
		return number;
	}
}
