package Trillion.Palet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop/")
public class ShopController {

	@RequestMapping("toShop")
	public String toShop() {
		
		return "/shop/shopHome";
	}
}
