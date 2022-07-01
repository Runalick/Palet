package Trillion.Palet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.ExhibitionDAO;
import Trillion.Palet.DTO.ExhibitionDTO;

@Service
public class ExhibitionService {

	@Autowired
	private ExhibitionDAO edao;
	
	public int exhibitionInsert (ExhibitionDTO edto) {
		return edao.exhibitionInsert(edto);
	}
}
