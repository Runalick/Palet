package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ExticketDAO;
import Trillion.Palet.DAO.PayDAO;
import Trillion.Palet.DAO.ProticketDAO;
import Trillion.Palet.DTO.ExticketDTO;
import Trillion.Palet.DTO.MyCouponDTO;
import Trillion.Palet.DTO.MyGoodsDTO;
import Trillion.Palet.DTO.MyPointDTO;
import Trillion.Palet.DTO.PayDTO;
import Trillion.Palet.DTO.ProticketDTO;

@Service
public class PayService {
	
	@Autowired
	private PayDAO dao;
	
	@Autowired
	private ExticketDAO daoex;
	
	@Autowired
	private ProticketDAO daopro;
	
	public List<PayDTO> insert(PayDTO dto) {
		List<PayDTO> list = dao.insert(dto); 
		return list;
	}
	
	public int insertEx(ExticketDTO dto) {
		int result = daoex.exticketInsert(dto);
		return result;
	}
	
	
	public int insertPro(ProticketDTO dto) {
		int result = daopro.proticketInsert(dto);
		return result;
	}
	
	public int myGoods(MyGoodsDTO dto) {
		return dao.myGoods(dto);
	}
	
	public int point(MyPointDTO dto) {
		return dao.point(dto);
	}
	
	public int coupon(MyCouponDTO dto) {
		return dao.coupon(dto);
	}
	
	public int deleteCart(String cart_seq, String email) {
		return dao.deleteCart(cart_seq, email);
	}
}
