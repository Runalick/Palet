package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.CouponDTO;

@Repository
public class CouponDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public int userupdate(String serial,String email) throws Exception{
		Map<String, String> param = new HashMap<String, String>();
		param.put("serial", serial);
		param.put("email", email);
		System.out.println(email);
		return mybatis.update("coupon.userupdate",param);
	}
	public CouponDTO isusecoupon(String serial) throws Exception{
		return mybatis.selectOne("coupon.isusecoupon",serial);
	}
	public List<CouponDTO> selectall(String email) throws Exception{
		return mybatis.selectList("coupon.selectall",email);
	}
	public int make(String serial,String dc,String category) throws Exception{
		Map<String, String> param = new HashMap<String, String>();
		param.put("serial", serial);
		param.put("dc", dc);
		param.put("category", category);
		return mybatis.insert("coupon.make",param);
	}
}
