package Trillion.Palet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.ShopDTO;
import Trillion.Palet.service.ShopService;

@Controller
@RequestMapping("/shop/")
public class ShopController {
	
	@Autowired
	private ShopService sServ;
	
	@ResponseBody
	@RequestMapping("selectBestSeller")
	public List<GoodsDTO> selectBestSeller(int e_num, String option) {
		List<GoodsDTO> list = sServ.selectBestSeller(e_num, option);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("selectLowPrice")
	public List<ShopDTO> selectLowPrice(int e_numSelectVal) {
		List<ShopDTO> list = sServ.selectLowPrice(e_numSelectVal);
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping("selectHighPrice")
	public List<ShopDTO> selectHighPrice(int e_numSelectVal) {
		List<ShopDTO> list = sServ.selectHighPrice(e_numSelectVal);
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping("goodsPic")
	public String goodsPic(int g_num) {
		
		return sServ.goodsPic(g_num);
	}
	
	
	
}