package Trillion.Palet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/goods/")
public class GoodsController {


	
	@RequestMapping("goDetail")
	public String goDetail() {
		
		return "/goods/detailview";
	}
}
