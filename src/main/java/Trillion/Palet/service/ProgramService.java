package Trillion.Palet.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DAO.ProgramDAO;
import Trillion.Palet.DTO.ProgramDTO;
import Trillion.Palet.DTO.ProgramPicDTO;

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
	
	public void programInsert (ProgramDTO pdto, String realPath, MultipartFile[] file) {
		pdao.programInsert(pdto);
		int p_num = pdto.getP_num();
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
				pdao.programPicinsert(new ProgramPicDTO(0, p_num, ep_oriname, ep_sysname));
			}
		}
		
		
	}

}
