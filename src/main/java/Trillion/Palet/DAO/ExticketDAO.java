package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.ExticketDTO;

@Repository
public class ExticketDAO {

	@Autowired
	private SqlSession mybatis;
	
	public int exticketInsert(ExticketDTO dto) {
		return mybatis.insert("Exticket.insert", dto);
	}
	
}
