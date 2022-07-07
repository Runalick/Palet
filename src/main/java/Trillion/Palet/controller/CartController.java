package Trillion.Palet.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String isGoodsExist(int[] g_num, int[] cartstock) {
			System.out.println(g_num[0]);
			System.out.println(cartstock[0]);
			String email = (String)session.getAttribute("loginEmail");
			for(int i=0; i<g_num.length;i++) {
			boolean isGoodsExist = cServ.isGoodsExist(g_num[i]);
			boolean isGoodsStocksame=cServ.isGoodsStocksame(g_num[i],cartstock[i]);
			//옵션,수량 같을 때 멈춤
			if(isGoodsExist && isGoodsStocksame) {
				continue;
				
			}else if(isGoodsExist || isGoodsStocksame){ //옵션은 있는데 수량이 다를 때 변경
				cServ.selectModiOne(g_num[i],cartstock[i]);
			}else {//둘 다 없을 때 insert
				cServ.insertCart(g_num[i],cartstock[i],email);
			}
			}
			return "false"; 
	}
	
	
	@RequestMapping("cartlist")
	public String cartList(Model model,HttpServletResponse response) throws Exception {
//		String email = (String)session.getAttribute("loginEmail");
		String email = "i2376@naver.com";
		//장바구니 list
		List<CartListDTO> list = cServ.selectAll(email);
		//총 수량, 가격
		TotalCartDTO totalList = cServ.total(email);
		//옵션
		String realpath = "/cart/cartList/";
		
		
		model.addAttribute("realpath",realpath);
		model.addAttribute("list",list);
		model.addAttribute("totalList",totalList);
		return"cart/cart-exist";
	}
	
	
	@RequestMapping("cartDel")
	public String cartDel(int g_num) {

		cServ.delete(g_num);
		return"redirect:cartlist";
	}
	
	@ResponseBody
	@RequestMapping("cartModi")
	public String cartModi(int g_num,int cartstock) {
		cServ.selectModiOne(g_num,cartstock);
		return "success";
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
	
	@RequestMapping("choosedel")
	public String choosedel(int[] g_num) {
		for(int i=0; i<g_num.length;i++) {
			cServ.delete(g_num[i]);	
		}
		
		return "redirect:cartlist";
	}
	
}

