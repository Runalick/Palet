package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession mybatis;
	
	public int join(MemberDTO dto) {
		return mybatis.insert("Member.join", dto);
	}
	
	public boolean isEmailExist(String email) {
		return mybatis.selectOne("Member.isEmailExist", email);
	}
	
	public boolean login(String id, String pw) {	
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("pw", pw);
		return mybatis.selectOne("Member.login", param);
	}

}
