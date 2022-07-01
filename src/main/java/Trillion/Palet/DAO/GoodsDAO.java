package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.GoodsDTO;

@Repository
public class GoodsDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public List<GoodsDTO> selectAll(){
		return mybatis.selectList("Goods.selectAll");
	}
}
