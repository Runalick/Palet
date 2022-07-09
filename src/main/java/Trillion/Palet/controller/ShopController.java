package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.GoodsDTO;
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
		List<GoodsDTO> list = gServ.getoption(dto.getG_name());
		for(GoodsDTO ddto : list) {
			System.out.println(ddto.getG_option());
		}
		if(email !=null) {
			TotalCartDTO totalDto=cServ.total(email);
		 model.addAttribute("totalDto",totalDto);
		}
		
		model.addAttribute("loginEmail",email);
		model.addAttribute("dto",dto);
		model.addAttribute("optionlist",list);
		return "/shop/detailview";
	}
	


	
	@Autowired
	private ShopService sServ;
	
	@ResponseBody
	@RequestMapping("selectBestSeller")
	public List<GoodsDTO> selectBestSeller(int e_num, String option) {
		List<GoodsDTO> list = sServ.selectBestSeller(e_num, option);
		return list;
	}

	@RequestMapping("success")
	public String success() {
		return"/cart/shop-order-success";
	}
	
}