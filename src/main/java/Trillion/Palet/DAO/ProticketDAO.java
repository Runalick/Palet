package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ProticketDTO;
@Repository
public class ProticketDAO {
	@Autowired
	private SqlSession mybatis;
	public int proticketInsert(ProticketDTO dto) {
		return mybatis.insert("Proticket.insert", dto);
	}
	

}

