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
	
	public int exhibitionCheckDelelte (int e_num) {
		return edao.exhibitionCheckDelete(e_num);
	}
	
	public int exhibitionCheckUpdate (String e_num, String e_period) {
		return edao.exhibitionCheckUpdate(e_num, e_period);
	}
}
