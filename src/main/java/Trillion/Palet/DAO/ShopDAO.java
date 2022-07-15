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
	
	public List<GoodsDTO> selectGoods(int e_num, String option) {
		Map<String, Object> param = new HashMap<>();
		param.put("e_num", e_num);
		param.put("option", option);
//		param.put("limit", limit);
		return mybatis.selectList("Shop.selectGoods", param);
	}
	
	
}
