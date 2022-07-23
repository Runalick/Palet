package Trillion.Palet.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.TotalCartDTO;
import Trillion.Palet.DTO.goodsOrderDTO;



@Repository
public class CartDAO {

	@Autowired
	private SqlSession mybatis;
	
	public boolean isGoodsExist(int g_seq,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_seq",  g_seq);
		param.put("email", email);
		System.out.println("---");
		System.out.println(g_seq);
		System.out.println(email);
		return mybatis.selectOne("Cart.isGoodsExist",param);
	}

	public int insertCart(int g_seq,int cartstock,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_seq",  g_seq);
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

	public int delete(int g_seq) {
		return mybatis.delete("Cart.delete",g_seq);
	}

	public int selectModiOne(int g_seq,int cartstock,String email) {
	
		Map<Object,Object>param = new HashMap<>();
		param.put("g_seq", g_seq);
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

	public boolean isGoodsStocksame(int g_seq, int cartstock,String email) {
		Map<Object,Object> param = new HashMap<>();
		param.put("g_seq",  g_seq);
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
	
	public int beforeunload(String email) {
		return mybatis.delete("Cart.beforeunload", email);
	}
	
	public List<goodsOrderDTO> select_cart(String email){
		return mybatis.selectList("Cart.select_cart", email);
	}

	public int deleteSelectcart(String email) {
		return mybatis.delete("Cart.deleteSelectcart", email);
	}

	

}