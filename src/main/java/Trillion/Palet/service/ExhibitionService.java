package Trillion.Palet.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DAO.ExhibitionDAO;
import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.ExhibitionPicDTO;
import Trillion.Palet.DTO.NewExhibitionDTO;
import Trillion.Palet.DTO.PreExhibitionDTO;


@Service
public class ExhibitionService {

	@Autowired
	private ExhibitionDAO edao;
	
	
	public void exhibitionInsert (ExhibitionDTO edto, String realPath, MultipartFile[] file) {
		edao.exhibitionInsert(edto);
		int e_num = edto.getE_num();
		if(file != null) {
			File realPathFile = new File(realPath);
			if(!realPathFile.exists())realPathFile.mkdir();
			
			for(MultipartFile mf : file) {
				String ep_oriname = mf.getOriginalFilename();
				String ep_sysname = UUID.randomUUID()+"_"+ep_oriname;
				try {
					mf.transferTo(new File(realPath+"/"+ep_sysname));
				}catch (Exception e) {
					e.printStackTrace();
				}
				edao.exhibitionPicinsert(new ExhibitionPicDTO(0, e_num, ep_oriname, ep_sysname));
			}
		}
		
		
	}
	
	public int exhibitionCheckDelelte (int e_num) {
		return edao.exhibitionCheckDelete(e_num);
	}
	
	public int exhibitionCheckUpdate (String e_num, String e_period) {
		return edao.exhibitionCheckUpdate(e_num, e_period);
	}
	
	public List<NewExhibitionDTO> exhibitionSelectAll(){
		return edao.exhibitionSelectAll();
	}
	
	public NewExhibitionDTO exhibitionBestSeller() {
		return edao.exhibitionBestSeller();
	}
	
	public ExhibitionDTO NewExhibitionBestSeller() {
		return edao.NewExhibitionBestSeller();
	}
	
	public ExhibitionDTO getExhibition(int e_num) {
		return edao.getExhibition(e_num);
	}
	
	public int updateSalesCount(String et_title, int et_count) {
		
		return edao.updateSalesCount(et_title, et_count+1);
		
	}

	public List<PreExhibitionDTO> getlatest3() {
		return edao.getlatest3();
	}
	

}
