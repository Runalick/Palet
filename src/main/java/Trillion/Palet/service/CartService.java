package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.CartDAO;
import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.TotalCartDTO;
import Trillion.Palet.DTO.goodsOrderDTO;


@Service
public class CartService {
	
	@Autowired
	private CartDAO cdao;
	
	public boolean isGoodsExist(int g_seq,String email) {
		System.out.println(g_seq);
		System.out.println(email);
		return cdao.isGoodsExist(g_seq,email);
	}

	public int insertCart(int g_seq, int cartstock, String email ) {
		return cdao.insertCart(g_seq,cartstock,email);
	}

	public List<CartListDTO> selectAll(String email) {
		return cdao.selectAll(email);
	}

	public TotalCartDTO total(String email) {
		return cdao.total(email);
	}

	public int delete(int g_seq) {
		return cdao.delete(g_seq);
	}
	public int selectModiOne(int g_seq,int cartstock,String email) {
		return cdao.selectModiOne(g_seq,cartstock,email);
	}

	public List<CartListDTO> purchase(int[] buy,String email) {
		return cdao.purchase(buy,email);
	}

	public boolean isGoodsStocksame(int g_seq, int cartstock,String email) {
		return cdao.isGoodsStocksame(g_seq,cartstock,email);
	}

	public int insertSelect_Cart(int cart_seq) {
		CartListDTO dto = cdao.selectOne(cart_seq);
		return cdao.insertSelect_Cart(dto);
	}
	
	public int beforeunload(String email) {
		return cdao.beforeunload(email);
	}
	
	public List<goodsOrderDTO> select_cart(String email){
		return cdao.select_cart(email);
	}

	public int deleteSelectcart(String email) {
		return cdao.deleteSelectcart(email);
	}

	
}