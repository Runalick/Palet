package Trillion.Palet.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.CouponDAO;
import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.utiles.SendMail;

@Service
public class CouponService {
 
	@Autowired
	CouponDAO dao;
	
	@Autowired
	SendMail send;
	
	public int userupdate(String serial,String email ) throws Exception{
		return dao.userupdate(serial,email);
	}
	public CouponDTO isusecoupon(String serial) throws Exception{
		return dao.isusecoupon(serial);
	}
	public List<CouponDTO> selectall(String email) throws Exception{
		return dao.selectall(email);
	}
	public void make(int number,String dc,String category) throws Exception{
		for(int i =0;i<number;i++) {
			String serial = send.randomString();
			dao.make(serial,dc,category);
		}
	}
	
	//[티켓] 쿠폰 이름 가져오기
	public CouponDTO getCouponName(String et_cpserial) {
		return dao.getCouponName(et_cpserial);
	}
}
