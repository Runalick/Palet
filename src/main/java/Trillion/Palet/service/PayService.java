package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.PayDAO;
import Trillion.Palet.DTO.PayDTO;

@Service
public class PayService {
	
	@Autowired
	private PayDAO dao;
	
	public List<PayDTO> insert(PayDTO dto) {
		List<PayDTO> list = dao.insert(dto); 
		return list;
	}
}
