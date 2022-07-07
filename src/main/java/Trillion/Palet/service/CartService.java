package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.CartDAO;
import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.TotalCartDTO;


@Service
public class CartService {
	
	@Autowired
	private CartDAO cdao;
	
	public boolean isGoodsExist(int g_num) {
		return cdao.isGoodsExist(g_num);
	}

	public int insertCart(int g_num, int cartstock, String email ) {
		return cdao.insertCart(g_num,cartstock,email);
	}

	public List<CartListDTO> selectAll(String email) {
		return cdao.selectAll(email);
	}

	public TotalCartDTO total(String email) {
		return cdao.total(email);
	}

	public int delete(int g_num) {
		return cdao.delete(g_num);
	}
	public int selectModiOne(int g_num,int cartstock) {
		return cdao.selectModiOne(g_num,cartstock);
	}

	public List<CartListDTO> purchase(int[] buy,String email) {
		return cdao.purchase(buy,email);
	}

	public boolean isGoodsStocksame(int g_num, int cartstock) {
		return cdao.isGoodsStocksame(g_num,cartstock);
	}
}