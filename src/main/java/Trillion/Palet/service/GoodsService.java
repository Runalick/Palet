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
		
	public List<GoodsDTO> selectAll(){
		return dao.selectAll();
	}
	
	public void goodsInsert(GoodsDTO gdto, String realPath, MultipartFile[] file) {

		int seq;
		String option = gdto.getG_option1();
		System.out.println("enum : "+gdto.getE_num()+"  gnum : "+gdto.getG_num()+"  gname : "+gdto.getG_name()+"  gprice : "+gdto.getG_price()+"  goption : "+gdto.getG_option1()+"  salecount : "+gdto.getSales_count()+"  stock : "+gdto.getG_stock());
		System.out.println(option);
		
		if(option.equals("")) {
			seq = dao.goodsInsert2(gdto);
		}else {
			seq = dao.goodsInsert1(gdto);
		} 
		System.out.println("afterG_num : "+gdto.getG_num());
		System.out.println("selectKey : "+seq);

		int e_num = gdto.getE_num();
		int g_num = gdto.getG_num();
		
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
				dao.goodsPicInsert(new GoodsPicDTO(0, g_num, e_num, gp_oriname, gp_sysname));
			}
		}		
	}
	
	public GoodsDTO getGoods(int g_num) {
		return dao.getGoods(g_num);
	}
	
	public GoodsDTO goodsBestSeller(){
		return dao.goodsBestSeller();
	}

	public GoodsDTO goodsdetail(int g_num) {
		return dao.selectdetail(g_num);
	}

	//같은 이름 다른 옵션 가져오기
	public List<GoodsDTO> getoption(int g_num) {
		return dao.getoption(g_num);
	}
	
}
