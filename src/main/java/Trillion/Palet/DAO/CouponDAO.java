package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.CouponDTO;

@Repository
public class CouponDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public int userupdate(String serial,String email) throws Exception{
		Map<String, String> param = new HashMap<String, String>();
		param.put("serial", serial);
		param.put("email", email);
		System.out.println(email);
		return mybatis.update("coupon.userupdate",param);
	}
	public CouponDTO isusecoupon(String serial) throws Exception{
		return mybatis.selectOne("coupon.isusecoupon",serial);
	}
	public List<CouponDTO> selectall(String email) throws Exception{
		return mybatis.selectList("coupon.selectall",email);
	}
	public int make(String serial,String dc,String category) throws Exception{
		Map<String, String> param = new HashMap<String, String>();
		param.put("serial", serial);
		param.put("dc", dc);
		param.put("category", category);
		return mybatis.insert("coupon.make",param);
	}
	public CouponDTO getCouponName(String et_cpserial) {
		return mybatis.selectOne("coupon.getCouponName",et_cpserial);
	}
	public List<CouponDTO> getAllList() throws Exception{
		return mybatis.selectList("coupon.alllist");
	}
	public int getcouponTotalCount() throws Exception{
		return mybatis.selectOne("coupon.listcount");
	}
	public List<CouponDTO> selectbypage(int cpage) throws Exception{
		String start = String.valueOf(cpage * 10 - 9);
		String end = String.valueOf(cpage * 10);
		Map<String, String> param = new HashMap<>();
		param.put("start", start);
		param.put("end", end);
		
		return mybatis.selectList("coupon.selectbypage",param);
	}
	public String getcouponPageNavi(int currentPage) throws Exception {
		int recordTotalCount = this.getcouponTotalCount(); 
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
		String link = "<a href='/admin/adminCoupon?cpage=";
		
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
