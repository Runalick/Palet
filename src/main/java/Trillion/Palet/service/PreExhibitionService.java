package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.PreExhibitionDAO;
import Trillion.Palet.DTO.PreExhibitionDTO;

@Service
public class PreExhibitionService {
	
	@Autowired
	private PreExhibitionDAO daoPe;
	
	
	public List<PreExhibitionDTO> selectAll() {

		return daoPe.selectAll();

	}
	
	
	public List<PreExhibitionDTO> chooseAll(int limit) {

		return daoPe.chooseAll(limit);

	}
	
	public PreExhibitionDTO preDetail(String pe_img) {

		return daoPe.preDetail(pe_img);

	}
}

