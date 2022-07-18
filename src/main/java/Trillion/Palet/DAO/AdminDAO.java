package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.AdminDTO;
import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.ProgramDTO;
import Trillion.Palet.DTO.SalesDTO;
import Trillion.Palet.DTO.TotalPaymentDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	// Member Category
	
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
	
	public int adminMemberModi(MemberDTO dto) {
//		Map<String, String> param = new HashMap<>();
//		String s_point = String.valueOf(point);
//		param.put("name", name);
//		param.put("grade", grade);
//		param.put("point", s_point);
//		param.put("email", email);
		return mybatis.update("Admin.adminMemberModi", dto);
	}
	
	public int adminMemberBan(String email) {
		return mybatis.delete("Admin.adminMemberBan", email);
	}
	
	public int memberCheckUpdate(String email, String grade) {
		Map<String, String> param = new HashMap<>();
		param.put("email", email);
		param.put("grade", grade);
		return mybatis.update("Admin.adminMemberUpdate", param);
	}
	
	public List<AdminDTO> getMemberPayment(String email) {
		return mybatis.selectList("Admin.getMemberPayment", email);
	}
	
	// Exhibition Category
	
	public List<ExhibitionDTO> exhibitionSelectByPage (int cpage, String order) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		param.put("order", order);
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
	
	public int adminExhibitionUpdate(ExhibitionDTO edto) {
		return mybatis.update("Admin.adminExhibitionUpdate", edto);
	}
	
	// Goods Category
	
	public List<GoodsDTO> goodsSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Goods.goodsSelectByPage", param);
	}
	
	public List<GoodsDTO> goodsJoinSelectByPage(int cpage, String order){
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		param.put("order", order);
		return mybatis.selectList("Goods.goodsJoinSelectByPage", param);
	}
	
	private int getGoodsTotalCount() {
		return mybatis.selectOne("Goods.getGoodsTotalCount");
	}
	
	private int getGoodsJoinTotalCount() {
		return mybatis.selectOne("Goods.getGoodsJoinTotalCount");
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
	
	public String getGoodsJoinPageNavi(int currentPage) {
		int recordTotalCount = this.getGoodsJoinTotalCount(); 
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
	
	public int goodsCheckDelete(int g_num) {
		return mybatis.delete("Goods.goodsCheckDelete", g_num);
	}
	
	public int goodsCheckUpdate(String g_num, String e_num) {
		Map<String, String> param = new HashMap<>();
		param.put("g_num", g_num);
		param.put("e_num", e_num);
		return mybatis.update("Goods.goodsCheckUpdate", param);	
	}
	
	public int adminGoodsUpdate(GoodsDTO gdto) {
		return mybatis.update("Admin.adminGoodsUpdate", gdto);
	}
	
	// Program Category
	
	public List<ProgramDTO> programSelectByPage (int cpage, String order) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		param.put("order", order);
		return mybatis.selectList("Program.programSelectByPage", param);
	}
	
	private int getProgramTotalCount() {
		return mybatis.selectOne("Program.getProgramTotalCount");
	}
	
	public String getProgramPageNavi(int currentPage) {
		int recordTotalCount = this.getProgramTotalCount(); 
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
		String link = "<a href='/admin/adminProgramList?cpage=";
		
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
	
	
	// Payment Category
	
	public List<TotalPaymentDTO> paymentSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Admin.paymentSelectByPage", param);
	}
	

	private int getPaymentTotalCount() {
		return mybatis.selectOne("Admin.getPaymentTotalCount");
	}
	
	public String getPaymentPageNavi(int currentPage) {
		int recordTotalCount = this.getPaymentTotalCount(); 
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
		String link = "<a href='/admin/adminPayment?cpage=";
		
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

	
	public List<TotalPaymentDTO> paymentSelectUIDByPage (int cpage, String uid) {
		String start = String.valueOf((cpage - 1 )* 50 + 1);
		String end = String.valueOf(cpage * 50);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		param.put("uid", uid);
		return mybatis.selectList("Admin.paymentSelectUIDByPage", param);
	}

	private int getPaymentUIDTotalCount(String search) {
		return mybatis.selectOne("Admin.getPaymentUIDTotalCount", search);
	}
	
	public String getPaymentUIDPageNavi(int currentPage, String search) {
		int recordTotalCount = this.getPaymentUIDTotalCount(search); 
		int recordCountPerPage = 50; 
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
		String link = "<a href='/admin/adminPayment?cpage=";
		
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
	
	
	public List<TotalPaymentDTO> paymentSelectNameByPage (int cpage, String name) {
		String start = String.valueOf((cpage - 1 )* 50 + 1);
		String end = String.valueOf(cpage * 50);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		param.put("name", name);
		return mybatis.selectList("Admin.paymentSelectNameByPage", param);
	}
	
	private int getPaymentNameTotalCount(String search) {
		return mybatis.selectOne("Admin.getPaymentNameTotalCount", search);
	}
	
	public String getPaymentNamePageNavi(int currentPage, String search) {
		int recordTotalCount = this.getPaymentNameTotalCount(search); 
		int recordCountPerPage = 50; 
		int naviCountPerPage = 10; 
		int pageTotalCount = 0; 
		
		if(recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage +1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		
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
		String link = "<a href='/admin/adminPayment?cpage=";
		
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
	
	public AdminDTO getAdminPayDetail (String merchant_uid) {
		return mybatis.selectOne("Admin.getAdminPayDetail", merchant_uid);
	}
	
	public AdminDTO getAdminExticketDetail (String merchant_uid) {
		return mybatis.selectOne("Admin.getAdminExticketDetail", merchant_uid);
	}
	
	public AdminDTO getAdminProticketDetail (String merchant_uid) {
		return mybatis.selectOne("Admin.getAdminProticketDetail", merchant_uid);
	}
	
	public List<CancelDTO> cancelSelectByPage (int cpage) {
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		return mybatis.selectList("Admin.cancelSelectByPage", param);
	}
	
	private int getCancelTotalCount() {
		return mybatis.selectOne("Admin.getCancelTotalCount");
	}
	
	public String getCancelPageNavi(int currentPage) {
		int recordTotalCount = this.getCancelTotalCount(); 
		int recordCountPerPage = 10; 
		int naviCountPerPage = 10; 
		int pageTotalCount = 0; 
		
		if(recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage +1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		
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
		String link = "<a href='/admin/adminCancelPayment?cpage=";
		
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
	
	public String categoryCheck(String check) {
		return mybatis.selectOne("Admin.categoryCheck", check);
	}
	
	public int cancelExticketUpdate(String check) {
		return mybatis.update("Admin.cancelExticketUpdate", check);
	}
	
	public int cancelGoodsUpdate(String check) {
		return mybatis.update("Admin.cancelGoodsUpdate", check);
	}
	
	public int cancelProticketUpdate(String check) {
		return mybatis.update("Admin.cancelProticketUpdate", check);
	}
	
	public int cancelPaymentCheckDelete(String check) {
		return mybatis.delete("Admin.cancelPaymentCheckDelete", check);
	}
	
	
	
	// etc..
	
	public List<SalesDTO> getWeekSales(){
		return mybatis.selectList("Admin.getWeekSales");
	}
	
	public List<SalesDTO> getWeekCount(){
		return mybatis.selectList("Admin.getWeekCount");
	}
	
}
