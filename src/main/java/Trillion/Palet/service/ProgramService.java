package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ProgramDAO;
import Trillion.Palet.DTO.ProgramDTO;

@Service
public class ProgramService {
	
	
	@Autowired
	private ProgramDAO pdao;
public int updateSalesCount(String pro_title, int pro_count) {
		
		return pdao.updateSalesCount(pro_title, pro_count+1);
		
	}

	public ProgramDTO programBestSeller(){
		return pdao.programBestSeller();
	}

}
