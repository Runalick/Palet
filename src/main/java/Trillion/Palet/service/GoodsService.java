package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.GoodsDAO;
import Trillion.Palet.DTO.GoodsDTO;

@Service
public class GoodsService {
	@Autowired
	private GoodsDAO dao;
	
	public List<GoodsDTO> selectAll(){
		return dao.selectAll();
	}
	
}
