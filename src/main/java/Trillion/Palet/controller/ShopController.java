package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.service.GoodsService;

@Controller
@RequestMapping("/shop/")
public class ShopController {

	@Autowired
	private GoodsService gServ;
	
	@Autowired
	private HttpSession session; 
	
	@RequestMapping("toShop")
	public String toShop() {
		
		return "/shop/shopHome";
	}
	
	@RequestMapping("goDetail")
	public String goDetail(int g_num, Model model) {
		String email = (String)session.getAttribute("loginEmail");
		GoodsDTO dto = gServ.goodsdetail(g_num);
		List<GoodsDTO> list = gServ.getoption(dto.getG_name());
		
		for(GoodsDTO ddto : list) {
			System.out.println(ddto.getG_option());
		}
		
		model.addAttribute("loginEmail",email);
		model.addAttribute("dto",dto);
		model.addAttribute("optionlist",list);
		return "/shop/detailview";
	}
	
	@RequestMapping("emptycart")
	public String emptycart() {
		return "/cart/cart-empty";
	}
	
	@RequestMapping("ordersuccess")
	public String ordersuccess() {
		return "/cart/shop-order-success";
	}
}
