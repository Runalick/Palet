package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.PreExhibitionDTO;


@Repository
public class PreExhibitionDAO {

	
	@Autowired
	private SqlSession mybatis;
	
	public List<PreExhibitionDTO> selectAll() {

		return mybatis.selectList("PreExhibition.selectAll");

	}
	
	
	
	
	public List<PreExhibitionDTO> chooseAll(int limit) {

		return mybatis.selectList("PreExhibition.chooseAll",limit);

	}
	
	public List<PreExhibitionDTO> chooseUp() {

		return mybatis.selectList("PreExhibition.chooseUp");

	}
	
	
	

	public PreExhibitionDTO preDetail(String pe_img) {

		return mybatis.selectOne("PreExhibition.preDetail",pe_img);

	}

}