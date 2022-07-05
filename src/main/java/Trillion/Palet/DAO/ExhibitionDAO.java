package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public int exhibitionCheckDelete(int e_num) {
		return mybatis.delete("Exhibition.exhibitionCheckDelete", e_num);
	}
	
	public int exhibitionCheckUpdate(String e_num, String e_period) {
		Map<String, String> param = new HashMap<>();
		param.put("e_num", e_num);
		param.put("e_period", e_period);
		return mybatis.update("Exhibition.exhibitionCheckUpdate", param);	
	}
	
	public List<ExhibitionDTO> exhibitionSelectAll(){
		return mybatis.selectList("Exhibition.exhibitionSelectAll");
	}
}
