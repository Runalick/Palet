package Trillion.Palet.DAO;

import java.sql.Blob;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.DrawingDTO;

@Repository
public class DrawingDAO {
	
	@Autowired
	private SqlSession mybatis;
	
//	public int add(DrawingDTO dto) {
//		mybatis.insert("Event.add", dto);
//		return dto.getDraw_seq();
//	}
	
	public int add(DrawingDTO dto, String fileName, Blob blob) throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("draw_seq", dto.getDraw_seq());
		param.put("d_title", dto.getD_title());
		param.put("painter", dto.getPainter());
		param.put("file", blob);
		param.put("file_name", fileName);
		param.put("file_size", blob.length());
		param.put("email", dto.getEmail());
		mybatis.insert("Event.add", param);
		return (int) dto.getDraw_seq();
	}

	public List<DrawingDTO> selectImage() {
		return mybatis.selectList("Event.selectImage");
	}
}
