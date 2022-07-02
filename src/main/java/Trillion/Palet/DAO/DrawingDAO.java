package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.DrawingDTO;

@Repository
public class DrawingDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public int add(DrawingDTO dto) {
		mybatis.insert("Event.add", dto);
		return dto.getDraw_seq();
	}
}
