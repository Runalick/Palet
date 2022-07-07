package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.QRDAO;
import Trillion.Palet.DTO.ExhibitionDTO;

@Service
public class QrcordService {
	
	@Autowired
	QRDAO dao;
	
	public ExhibitionDTO getNowExhibition(int e_num) throws Exception{
		return dao.getNowExhibition(e_num);
	}

}
