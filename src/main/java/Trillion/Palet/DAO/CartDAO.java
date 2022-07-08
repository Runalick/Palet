package Trillion.Palet.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.Select_CartDTO;
import Trillion.Palet.DTO.TotalCartDTO;



@Repository
public class CartDAO {

	@Autowired
	private SqlSession mybatis;
	
	public boolean isGoodsExist(int g_num,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_num",  g_num);
		param.put("email", email);
		System.out.println("---");
		System.out.println(g_num);
		System.out.println(email);
		return mybatis.selectOne("Cart.isGoodsExist",param);
	}

	public int insertCart(int g_num,int cartstock,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_num",  g_num);
		param.put("cartstock", cartstock);
		param.put("email", email);
		return mybatis.insert("Cart.insertCart",param);
	}

	public List<CartListDTO> selectAll(String email) {
		System.out.println(email);
		return mybatis.selectList("Cart.selectList",email);
	}

	public TotalCartDTO total(String email) {
		return mybatis.selectOne("Cart.total",email);
	}

	public int delete(int g_num) {
		return mybatis.delete("Cart.delete",g_num);
	}

	public int selectModiOne(int g_num,int cartstock,String email) {
	
		Map<Object,Object>param = new HashMap<>();
		param.put("g_num", g_num);
		param.put("cartstock", cartstock);
		param.put("email", email);
		return mybatis.update("Cart.selectModiOne",param);
	}

	public List<CartListDTO> purchase(int[] buy,String email) {
		List<CartListDTO> list = new ArrayList<>();
		for(int i : buy) {
			Map<Object,Object> param = new HashMap<>();
			param.put("email", email);
			param.put("buy", i);
			list.add( mybatis.selectOne("Cart.purchaseList",param));
		}
		return list;
		
	}

	public boolean isGoodsStocksame(int g_num, int cartstock,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_num",  g_num);
		param.put("cartstock", cartstock);
		param.put("email", email);
		return mybatis.selectOne("Cart.isGoodsStocksame",param);
	}

	

	public CartListDTO selectOne(int cart_seq) {
		return mybatis.selectOne("Cart.selectOne",cart_seq);
	}

	public int insertSelect_Cart(CartListDTO dto) {
		return mybatis.insert("Cart.insertSelect_Cart",dto);
	}
}