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
	
	public boolean login(String email, String pw) {	
		Map<String, String> param = new HashMap<String, String>();
		param.put("email", email);
		param.put("pw", pw);
		return mybatis.selectOne("Member.login", param);
	}
    public int changepw(MemberDTO dto) {
    	return mybatis.update("Member.changepw",dto);
    }
    public MemberDTO getmember(String email) {
    	return mybatis.selectOne("Member.getmember",email);
    }
    public int insert(MemberDTO dto) {
    	return mybatis.insert("Member.insert", dto);
    }
    public int changemypage(MemberDTO dto) {
    	return mybatis.update("Member.changemypage",dto);
    }
    public int memberout(MemberDTO dto) {
    	return mybatis.delete("Member.memberout",dto);
    }
    public int modipw(String id, String pw) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("pw", pw);
    	return mybatis.update("Member.changepw",param);
    }
    public int modiname(String id, String name) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("name", name);
    	return mybatis.update("Member.modiname",param);
    }
    public int modiphone(String id, String phone) {
    	Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("phone", phone);
    	return mybatis.update("Member.modiphone",param);
    }
    public int modiaddress(String id,String postcode,String address1,String address2) {
    	Map<String, String> param = new HashMap<String, String>();
    	param.put("id", id);
    	param.put("postcode", postcode);
    	param.put("address1", address1);
    	param.put("address2", address2);
    	return mybatis.update("Member.modiaddress",param);
    }
}
