package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ExhibitionDTO;

@Repository
public class ExhibitionDAO {

	@Autowired
	private SqlSession mybatis;
	
	public int exhibitionInsert(ExhibitionDTO dto) {
		return mybatis.insert("Exhibition.exhibitionInsert", dto);
	}
	
}
