package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.TotalCartDTO;
import Trillion.Palet.service.CartService;



@Controller
@RequestMapping("/cart/")
public class CartController {
	
	@Autowired 
	private CartService cServ;
	@Autowired
	private HttpSession session;
	
	@ResponseBody
	@RequestMapping("/isGoodsExist")
	public String isGoodsExist(int g_num,int cartstock) {
		boolean isGoodsExist = cServ.isGoodsExist(g_num);
		if(isGoodsExist) {
			return "true";
		}else {
			String email = (String)session.getAttribute("loginEmail");
			cServ.insertCart(g_num,cartstock,email);

			return "false"; 
		}
	}
	
	
	@RequestMapping("cartlist")
	public String cartList(Model model,HttpServletResponse response) throws Exception {
		String email = (String)session.getAttribute("loginEmail");
		List<CartListDTO> list = cServ.selectAll(email);
		TotalCartDTO totalList = cServ.total(email);

		String realpath = "/cart/cartList/";
		
		
		model.addAttribute("realpath",realpath);
		model.addAttribute("list",list);
		model.addAttribute("totalList",totalList);
		return"cart/cartList";
	}
	
	
	@RequestMapping("cartDel")
	public String cartDel(int g_num) {

		cServ.delete(g_num);
		return"redirect:cartlist";
	}
	
	@RequestMapping("cartModi")
	public String cartModi(int g_num,int cartstock) {
		cServ.selectModiOne(g_num,cartstock);
		return "redirect:cartlist";
	}
	
	@RequestMapping("purchase")
	public String purchase(int[] buy,Model model) {
		String email = (String)session.getAttribute("loginEmail");

		String realpath = "/cart/cartList/";

		model.addAttribute("realpath",realpath);
		List<CartListDTO> purchaselist = cServ.purchase(buy,email);
		model.addAttribute("purchaselist", purchaselist);
		return "cart/purchase";
	}
}

