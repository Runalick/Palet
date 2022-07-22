package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.MyCouponDTO;
import Trillion.Palet.DTO.MyGoodsDTO;
import Trillion.Palet.DTO.MyPointDTO;
import Trillion.Palet.DTO.PayDTO;

@Repository
public class PayDAO {

	@Autowired
	private SqlSession mybatis;
	
	public List<PayDTO> insert(PayDTO dto) {
		return mybatis.selectList("Pay.insert", dto);
	}
	
	public int myGoods(MyGoodsDTO dto) {
		return mybatis.insert("Pay.myGoods", dto);
	}
	
	public int point(MyPointDTO dto) {
		return mybatis.update("Pay.point", dto);
	}
	
	public int coupon(MyCouponDTO dto) {
		return mybatis.update("Pay.coupon", dto);
	}
	
	public int deleteCart(String cart_seq, String email) {
		Map<String,String> param = new HashMap<>();
		param.put("cart_seq", cart_seq);
		param.put("email", email);
		return mybatis.delete("Cart.deleteCart", param);
	}
}
