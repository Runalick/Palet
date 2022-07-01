package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.Drawing_PicDTO;

@Repository
public class Drawing_PicDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public int insert(Drawing_PicDTO dto) {
		return mybatis.insert("Event.picadd", dto);
	}

	public boolean isEmailExist(String email) {
		return mybatis.selectOne("Event.isEmailExist", email);
	}
}
