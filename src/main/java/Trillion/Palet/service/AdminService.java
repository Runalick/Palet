package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Trillion.Palet.DAO.AdminDAO;
import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;

@Service
public class AdminService {
		
	@Autowired
	private AdminDAO adao;
	
	public List<MemberDTO> memberSelectByPage(int cpage){
		return adao.memberSelectByPage(cpage);
	}
	
	public String getMemberPageNavi(int cpage) {
		return adao.getMemberPageNavi(cpage);
	}
	
	public List<ExhibitionDTO> exhibitionSelectByPage(int cpage){
		return adao.exhibitionSelectByPage(cpage);
	}
	
	public String getExhibitionPageNavi(int cpage) {
		return adao.getExhibitionPageNavi(cpage);
	}
	
	public List<GoodsDTO> goodsSelectByPage(int cpage){
		return adao.goodsSelectByPage(cpage);
	}
	
	public String getGoodsPageNavi(int cpage) {
		return adao.getGoodsPageNavi(cpage);
	}
	
	public int getMemberTotalCount() {
		return adao.getMemberTotalCount();
	}
}

