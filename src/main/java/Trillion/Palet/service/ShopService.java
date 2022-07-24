package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ShopDAO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDataDTO;
import Trillion.Palet.DTO.updateCartstockDTO;

@Service
public class ShopService {
	
	@Autowired
	private ShopDAO dao;
	
	public List<GoodsDTO> selectGoods(int e_num, String option, int limit) {
		return dao.selectGoods(e_num, option, limit);
	}
	
	public List<MemberDataDTO> selectMemberData(String email){
		return dao.selectMemberData(email);
	}
	
	public List<MemberDataDTO> selectMemberPoint(String email){
		return dao.selectMemberPoint(email);
	}

	public MemberDataDTO selectGrade(String email) {
		return dao.selectGrade(email);
	}
	
	public List<updateCartstockDTO> updateCartstock(int g_seq, int cartstock){
		return dao.updateCartstock(g_seq, cartstock);
	}
}
