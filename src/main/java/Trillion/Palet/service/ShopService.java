package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ShopDAO;
import Trillion.Palet.DTO.GoodsDTO;

@Service
public class ShopService {
	
	@Autowired
	private ShopDAO dao;
	
	public List<GoodsDTO> selectGoods(int e_num, String option) {
		return dao.selectGoods(e_num, option);
	}
	
	
}
