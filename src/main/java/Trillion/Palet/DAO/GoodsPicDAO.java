package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.GoodsPicDTO;

@Repository
public class GoodsPicDAO {

	@Autowired
	private SqlSession mybatis;
	
	public int insert(GoodsPicDTO dto) {
		return mybatis.insert("File.goodsPicInsert", dto);
	}
	
}
