package Trillion.Palet.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DAO.GoodsDAO;
import Trillion.Palet.DAO.GoodsPicDAO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.GoodsPicDTO;


@Service
public class GoodsService {
	@Autowired
	private GoodsDAO dao;
	
	@Autowired
	private GoodsPicDAO gpdao;
	
	public List<GoodsDTO> selectAll(){
		return dao.selectAll();
	}
	
	public void goodsInsert(GoodsDTO gdto, String realPath, MultipartFile[] file) {
		System.out.println("enum : "+gdto.getE_num()+"  gnum : "+gdto.getG_num()+"  gname : "+gdto.getG_name()+"  gprice : "+gdto.getG_price()+"  goption : "+gdto.getG_option()+"  salecount : "+gdto.getSales_count()+"  stock : "+gdto.getG_stock());
		if(gdto.getG_option() == null ) {
			gdto.setG_option("null");
		}
		int seq = dao.goodsInsert(gdto);
		System.out.println("G넘의변화?"+gdto.getG_num());
		System.out.println("seq확인 : "+seq);
		int e_num = gdto.getE_num();
		int g_num = seq;
		
		if(file != null) {
			File realPathFile = new File(realPath);
			if(!realPathFile.exists())realPathFile.mkdir();
			
			for(MultipartFile mf : file) {
				String gp_oriname = mf.getOriginalFilename();
				String gp_sysname = UUID.randomUUID()+"_"+gp_oriname;
				try {
					mf.transferTo(new File(realPath+"/"+gp_sysname));
				}catch (Exception e) {
					e.printStackTrace();
				}
				gpdao.insert(new GoodsPicDTO(0, g_num, e_num, gp_oriname, gp_sysname));
			}
		}		
	}
	
	public GoodsDTO goodsBestSeller(){
		return dao.goodsBestSeller();
	}
	
}
