package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public List<MemberDTO> memberSelectAll(){
		return mybatis.selectList("Member.memberSelectAll");
	}
	
	public List<MemberDTO> memberSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Member.memberSelectByPage", param);
	}
	
	public int getMemberTotalCount() {
		return mybatis.selectOne("Member.getMemberTotalCount");
	}
	
	public String getMemberPageNavi(int currentPage) {
		int recordTotalCount = this.getMemberTotalCount(); 
		int recordCountPerPage = 10; 
		int naviCountPerPage = 10; 
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage); // 0; 
		
//		if(recordTotalCount % recordCountPerPage > 0) {
//			pageTotalCount = recordTotalCount / recordCountPerPage +1;
//		}else {
//			pageTotalCount = recordTotalCount / recordCountPerPage;
//		}
		if(currentPage < 1) {
			currentPage= 1;
		}else if(currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = (currentPage-1) / naviCountPerPage * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		boolean needNext = true;
		boolean needPrev = true;
		
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		String link = "<a href='/admin/adminMembers?cpage=";
		
		if (needPrev) {
			sb.append(link+(startNavi-1)+"'>< </a>");
		}
		
		for (int i = startNavi ; i <= endNavi; i++) {
			if (currentPage == i) {
				sb.append(link+i+"\'>["+i+"] </a>");
			}else {
				sb.append(link+i+"\'>"+i+" </a>");
			}
		}
		if (needNext) {
			sb.append(link+(endNavi+1)+"'>> </a>");
		}
		return sb.toString();
	}
	
	public List<ExhibitionDTO> exhibitionSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Exhibition.exhibitionSelectByPage", param);
	}
	
	private int getExhibitionTotalCount() {
		return mybatis.selectOne("Exhibition.getExhibitionTotalCount");
	}
	
	public String getExhibitionPageNavi(int currentPage) {
		int recordTotalCount = this.getExhibitionTotalCount(); 
		int recordCountPerPage = 10; 
		int naviCountPerPage = 10; 
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage); // 0; 
		
//		if(recordTotalCount % recordCountPerPage > 0) {
//			pageTotalCount = recordTotalCount / recordCountPerPage +1;
//		}else {
//			pageTotalCount = recordTotalCount / recordCountPerPage;
//		}
		if(currentPage < 1) {
			currentPage= 1;
		}else if(currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = (currentPage-1) / naviCountPerPage * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		boolean needNext = true;
		boolean needPrev = true;
		
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		String link = "<a href='/admin/adminExhibitionList?cpage=";
		
		if (needPrev) {
			sb.append(link+(startNavi-1)+"'>< </a>");
		}
		
		for (int i = startNavi ; i <= endNavi; i++) {
			if (currentPage == i) {
				sb.append(link+i+"\'>["+i+"] </a>");
			}else {
				sb.append(link+i+"\'>"+i+" </a>");
			}
		}
		if (needNext) {
			sb.append(link+(endNavi+1)+"'>> </a>");
		}
		return sb.toString();
	}
	
	public List<GoodsDTO> goodsSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Goods.goodsSelectByPage", param);
	}
	
	private int getGoodsTotalCount() {
		return mybatis.selectOne("Goods.getGoodsTotalCount");
	}
	
	public String getGoodsPageNavi(int currentPage) {
		int recordTotalCount = this.getGoodsTotalCount(); 
		int recordCountPerPage = 10; 
		int naviCountPerPage = 10; 
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage); // 0; 
		
		if(currentPage < 1) {
			currentPage= 1;
		}else if(currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = (currentPage-1) / naviCountPerPage * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		boolean needNext = true;
		boolean needPrev = true;
		
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		String link = "<a href='/admin/adminGoodsList?cpage=";
		
		if (needPrev) {
			sb.append(link+(startNavi-1)+"'>< </a>");
		}
		
		for (int i = startNavi ; i <= endNavi; i++) {
			if (currentPage == i) {
				sb.append(link+i+"\'>["+i+"] </a>");
			}else {
				sb.append(link+i+"\'>"+i+" </a>");
			}
		}
		if (needNext) {
			sb.append(link+(endNavi+1)+"'>> </a>");
		}
		return sb.toString();
	}
}
