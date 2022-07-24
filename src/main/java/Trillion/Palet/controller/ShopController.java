package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.MemberDataDTO;
import Trillion.Palet.DTO.TotalCartDTO;
import Trillion.Palet.service.CartService;
import Trillion.Palet.service.GoodsService;
import Trillion.Palet.service.ShopService;

@Controller
@RequestMapping("/shop/")
public class ShopController {


	@Autowired
	private GoodsService gServ;
	
	@Autowired
	private HttpSession session; 
	
	@Autowired
	private CartService cServ;
	
	@RequestMapping("toShop")
	public String toShop() {
		
		return "/shop/shopHome";
	}
	
	@RequestMapping("goDetail")
	public String goDetail(int g_num, Model model) {
		String email = (String)session.getAttribute("loginEmail");
		GoodsDTO dto = gServ.goodsdetail(g_num);
		
		//굿즈 관련 정보 
		List<GoodsDTO> list = gServ.getoption(dto.getG_num());
		
		//장바구니 담긴 갯수
		if(email !=null) {
			TotalCartDTO totalDto=cServ.total(email);
		 model.addAttribute("totalDto",totalDto);
		}
		
		model.addAttribute("loginEmail",email);
		model.addAttribute("dto",dto);
		model.addAttribute("list",list);
		return "/shop/detailview";
	}
	


	
	@Autowired
	private ShopService sServ;
	
	@ResponseBody
	@RequestMapping("selectGoods")
	public List<GoodsDTO> selectGoods(int e_num, String option, int limit) {
		List<GoodsDTO> list = sServ.selectGoods(e_num, option, limit);
		return list;
	}

	@RequestMapping("success")
	public String success() {
		return"/shop/Order_Success";
	}
	
	@ResponseBody
	@RequestMapping("selectMemberData")
	public List<MemberDataDTO> selectMemberData(){
		String email = (String)session.getAttribute("loginEmail");
		List<MemberDataDTO> list = sServ.selectMemberData(email);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("selectMemberPoint")
	public List<MemberDataDTO> selectMemberPoint(){
		String email = (String)session.getAttribute("loginEmail");
		List<MemberDataDTO> list = sServ.selectMemberPoint(email);
		return list;
	}
	
}