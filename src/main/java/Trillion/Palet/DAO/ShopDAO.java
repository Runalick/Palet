package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.ShopDTO;

@Repository
public class ShopDAO {
	@Autowired
	private SqlSession mybatis;
	
	public List<GoodsDTO> selectBestSeller(int e_num, String option) {
		Map<String, Object> param = new HashMap<>();
		param.put("e_num", e_num);
		param.put("option", option);
		return mybatis.selectList("Shop.selectBestSeller", param);
	}
	
	public List<ShopDTO> selectLowPrice(int e_numSelectVal) {
		return mybatis.selectList("Shop.selectLowPrice", e_numSelectVal);
	}
	
	public List<ShopDTO> selectHighPrice(int e_numSelectVal) {
		return mybatis.selectList("Shop.selectHighPrice", e_numSelectVal);
	}
	
	public String goodsPic(int g_num) {
		return mybatis.selectOne("Shop.goodsPic", g_num);
	}
	
	
}
