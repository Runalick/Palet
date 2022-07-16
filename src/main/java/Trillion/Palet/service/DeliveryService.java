package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.DeliveryDAO;
import Trillion.Palet.DTO.DeliveryDTO;


@Service
public class DeliveryService {
	
	@Autowired
	private DeliveryDAO dao;

	public DeliveryDTO selectDefaultAddress(String email) {
		return dao.selectDefaultAddress(email);
	}

	public int insertNewDefaultAddress(DeliveryDTO dto) {
		return dao.insertNewDefaultAddress(dto);		
	}
	public int insertNewAddress(DeliveryDTO dto) {
		return dao.insertNewAddress(dto);		
	}
	public List<DeliveryDTO> selectAllAddress(String email) {
		return dao.selectAllAddress(email);
	}

	public DeliveryDTO selectAddress(int deliveryaddress_seq, String email) {
		return dao.selectAddress(deliveryaddress_seq,email);
	}

	public int delAddress(int deliveryaddress_seq) {
		return dao.delAddress(deliveryaddress_seq);
	}

	public int updateAddress(DeliveryDTO dto) {
		return dao.updateAddress(dto);
	}

	public int ModiDefaultAddress(DeliveryDTO dto) {
		return dao.ModiDefaultAddress(dto);
	}

	public boolean checkdefaultAddress(String email) {
		return dao.checkdefaultAddress(email);
	}

	

	

	
	
	
}
