package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ShopDAO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.ShopDTO;

@Service
public class ShopService {
	
	@Autowired
	private ShopDAO dao;
	
	public List<GoodsDTO> selectBestSeller(int e_num, String option) {
		return dao.selectBestSeller(e_num, option);
	}
	
	public List<ShopDTO> selectLowPrice(int e_numSelectVal) {
		return dao.selectLowPrice(e_numSelectVal);
	}
	
	public List<ShopDTO> selectHighPrice(int e_numSelectVal) {
		return dao.selectHighPrice(e_numSelectVal);
	}
	
	public String goodsPic(int g_num) {
		return dao.goodsPic(g_num);
	}
	
	
}
