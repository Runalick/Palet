package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDataDTO;
import Trillion.Palet.DTO.updateCartstockDTO;

@Repository
public class ShopDAO {
	@Autowired
	private SqlSession mybatis;
	
	public List<GoodsDTO> selectGoods(int e_num, String option, int limit) {
		Map<String, Object> param = new HashMap<>();
		param.put("e_num", e_num);
		param.put("option", option);
		param.put("limit", limit);
		return mybatis.selectList("Shop.selectGoods", param);
	}
	
	public List<MemberDataDTO> selectMemberData(String email){
		return mybatis.selectList("Shop.selectMemberData", email);
	}
	
	public List<MemberDataDTO> selectMemberPoint(String email){
		return mybatis.selectList("Shop.selectMemberPoint", email);
	}

	public MemberDataDTO selectGrade(String email) {
		return mybatis.selectOne("Shop.selectGrade",email);
	}
	
	public List<updateCartstockDTO> updateCartstock(int g_seq, int cartstock){
		Map<String, Object> param = new HashMap<>();
		param.put("g_seq", g_seq);
		param.put("cartstock", cartstock);
		return mybatis.selectList("Shop.updateCartstock",param);
	}
}
