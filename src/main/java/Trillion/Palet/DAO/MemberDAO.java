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
    public int modipw(String email, String pw) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("email", email);
		param.put("pw", pw);
    	return mybatis.update("Member.changepw",param);
    }
    public int modiname(String email, String name) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("email", email);
		param.put("name", name);
    	return mybatis.update("Member.modiname",param);
    }
    public int modiphone(String email, String phone) {
    	Map<String, String> param = new HashMap<String, String>();
		param.put("email", email);
		param.put("phone", phone);
    	return mybatis.update("Member.modiphone",param);
    }
    public int modiaddress(String email,String postcode,String address1,String address2) {
    	Map<String, String> param = new HashMap<String, String>();
    	param.put("email", email);
    	param.put("postcode", postcode);
    	param.put("address1", address1);
    	param.put("address2", address2);
    	return mybatis.update("Member.modiaddress",param);
    }
    public int delmember(String email) {
    	return mybatis.delete("Member.delmember",email);
    }

    //배송지부분
	public String getName(String email) {
		return mybatis.selectOne("Member.getName",email);
	}
	
	
	 public MemberDTO getpoint(String email) {
	    	return mybatis.selectOne("Member.getpoint",email);
	    }
	 public int updatePoint(int et_point, int et_usedpoint, String et_email) {
			
			Map<Object, Object> param = new HashMap<>();
			param.put("et_point", et_point);
			param.put("et_usedpoint", et_usedpoint);
			param.put("et_email", et_email);
				
				return mybatis.update("Member.updatePoint", param);
				
			}
			
		

}
