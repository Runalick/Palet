package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.DrawingDTO;

@Repository
public class DrawingDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public int add(DrawingDTO dto) {
		return mybatis.insert("Event.add",dto);
		//return (int) dto.getDraw_seq();
	}

	public List<Object> selectImage() {
		return  mybatis.selectList("Event.selectImage");
	}
	
	public List<Object> selectAll() {
		return  mybatis.selectList("Event.selectAll");
	}
	
	
	public List<Object> selectTitle() { 
		return mybatis.selectList("Event.selectTitle");
	}

	public int updateConfirm(int draw_seq) {
		return mybatis.update("Event.updateConfirm", draw_seq);
	}

	public int deleteDraw(int draw_seq) {
		return mybatis.delete("Event.deleteDraw", draw_seq);
	}

	public List<Object> selectConfirm(int limit) {
		return mybatis.selectList("Event.selectConfirm", limit);
	}

	public int findEmail(String email) {
		return mybatis.selectOne("Event.findEmail", email);
	}
	 

}
