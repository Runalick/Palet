package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ProgramDTO;
import Trillion.Palet.DTO.ProgramPicDTO;

@Repository
public class ProgramDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	
	
public int updateSalesCount(String pro_title, int pro_count) {
	
	Map<Object, Object> param = new HashMap<>();
	param.put("pro_title", pro_title);
	param.put("pro_count", pro_count);
		
		return mybatis.update("Program.updateSalesCount", param);
		
	}


	// Admin

	public ProgramDTO programBestSeller(){
		return mybatis.selectOne("Program.programBestSeller");
	}
	
	public int programInsert(ProgramDTO dto) {
		return mybatis.insert("Program.programInsert", dto);
	}
	
	public int programPicinsert(ProgramPicDTO dto) {
		return mybatis.insert("File.programPicInsert", dto);
	}
}
