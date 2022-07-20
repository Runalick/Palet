package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.GoodsPicDTO;

@Repository
public class GoodsDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public List<GoodsDTO> selectAll(){
		return mybatis.selectList("Goods.selectAll");
	}
	
	public int goodsInsert2(GoodsDTO gdto) {
		return mybatis.insert("Goods.goodsInsert2", gdto);
	}
	
	public int goodsInsert1(GoodsDTO gdto) {
		return mybatis.insert("Goods.goodsInsert1", gdto);
	}
	
	public GoodsDTO goodsBestSeller(){
		return mybatis.selectOne("Goods.goodsBestSeller");
	}

	public GoodsDTO selectdetail(int g_num) {
		return mybatis.selectOne("Goods.selectdetail",g_num);
	}

	public List<GoodsDTO> getoption(int g_num) {
		return mybatis.selectList("Goods.getoption",g_num);
	}
	
	public int goodsPicInsert(GoodsPicDTO dto) {
		return mybatis.insert("File.goodsPicInsert", dto);
	}
	
	public GoodsDTO getGoods(int g_num) {
		return mybatis.selectOne("Goods.getGoods", g_num);
	}

	//home 판매량순 6개 가져오기
	public List<GoodsDTO> gettop6goods() {
		return mybatis.selectList("Goods.gettop6goods");
	}
}
