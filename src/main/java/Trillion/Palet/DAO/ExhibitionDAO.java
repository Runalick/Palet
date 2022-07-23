package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.ExhibitionPicDTO;
import Trillion.Palet.DTO.NewExhibitionDTO;
import Trillion.Palet.DTO.PreExhibitionDTO;


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
	
	public List<NewExhibitionDTO> exhibitionSelectAll(){
		return mybatis.selectList("Exhibition.exhibitionSelectAll");
	}
	
	public NewExhibitionDTO exhibitionBestSeller() {
		return mybatis.selectOne("Exhibition.exhibitionBestSeller");
	}
	
	public ExhibitionDTO NewExhibitionBestSeller() {
		return mybatis.selectOne("Exhibition.newExhibitionBestSeller");
	}
	
	public int exhibitionPicinsert(ExhibitionPicDTO dto) {
		return mybatis.insert("File.exhibitionPicInsert", dto);
	}
	
	public ExhibitionDTO getExhibition(int e_num) {
		return mybatis.selectOne("Exhibition.getExhibition", e_num);
	}
	
	
	
public int updateSalesCount(String et_title, int et_count) {
	
	Map<Object, Object> param = new HashMap<>();
	param.put("et_title", et_title);
	param.put("et_count", et_count);
		
		return mybatis.update("Exhibition.updateSalesCount", param);
		
	}

public List<PreExhibitionDTO> getlatest3() {
	return mybatis.selectList("Exhibition.getlatest3");
}
	
}
