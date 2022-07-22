package Trillion.Palet.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DAO.AdminDAO;
import Trillion.Palet.DTO.AdminDTO;
import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.DeliveryDTO;
import Trillion.Palet.DTO.ExhibitionPicDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.GoodsPicDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.NewExhibitionDTO;
import Trillion.Palet.DTO.ProgramDTO;
import Trillion.Palet.DTO.SalesDTO;
import Trillion.Palet.DTO.TotalPaymentDTO;

@Service
public class AdminService {
		
	@Autowired
	private AdminDAO adao;
	
	// Member Category
	
	public List<MemberDTO> memberSelectByPage(int cpage){
		return adao.memberSelectByPage(cpage);
	}
	
	public String getMemberPageNavi(int cpage) {
		return adao.getMemberPageNavi(cpage);
	}
	
	public int getMemberTotalCount() {
		return adao.getMemberTotalCount();
	}
	
	public void adminMemberModi(MemberDTO dto) {
		adao.adminMemberModi(dto);
	}
	
	public void adminMemberBan(String email) {
		adao.adminMemberBan(email);
	}
	
	public int memberCheckDelete(String email) {
		return adao.adminMemberBan(email);
	}
	
	public int memberCheckUpdate (String email, String grade) {
		return adao.memberCheckUpdate(email, grade);
	}
	
	public List<AdminDTO> getMemberPayment(String email) {
		return adao.getMemberPayment(email);
	}
	
	public DeliveryDTO getMemberAddress(String email) {
		return adao.getMemberAddress(email);
	}
	
	
	// Exhibition Category
	
//	public List<ExhibitionDTO> exhibitionSelectByPage(int cpage, String value){
//		return adao.exhibitionSelectByPage(cpage, value);
//	}
	
	public List<NewExhibitionDTO> exhibitionSelectByPage(int cpage, String value){
		return adao.exhibitionSelectByPage(cpage, value);
	}
	
	public String getExhibitionPageNavi(int cpage) {
		return adao.getExhibitionPageNavi(cpage);
	}
	
	public void adminExhibitionUpdate(NewExhibitionDTO edto) {
		adao.adminExhibitionUpdate(edto);
	}
	
	@Transactional
	public void newExhibitionInsert (NewExhibitionDTO edto, String realPath, MultipartFile[] file) {
		adao.newExhibitionInsert(edto);
		int e_num = edto.getPe_seq();
		
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
				adao.exhibitionPicinsert(new ExhibitionPicDTO(0, e_num, ep_oriname, ep_sysname));
			}
		}
		
	}
	
	public int exhibitionCheckDelelte (int pe_seq) {
		return adao.exhibitionCheckDelete(pe_seq);
	}
	
	public int exhibitionCheckUpdate (String pe_seq, String pe_period) {
		return adao.exhibitionCheckUpdate(pe_seq, pe_period);
	}
	
	public NewExhibitionDTO getExhibition(int pe_seq) {
		return adao.getExhibition(pe_seq);
	}
	
	public List<NewExhibitionDTO> exhibitionSelectTop50(){
		return adao.exhibitionSelectTop50();
	}
	
	public List<NewExhibitionDTO> exhibitionSelectFixed(){
		return adao.exhibitionSelectFixed();
	}
	
	// Goods Category
	
	public List<GoodsDTO> goodsSelectByPage(int cpage){
		return adao.goodsSelectByPage(cpage);
	}
	
	public List<GoodsDTO> goodsJoinSelectByPage(int cpage, String value){
		return adao.goodsJoinSelectByPage(cpage, value);
	}
	
	public String getGoodsPageNavi(int cpage) {
		return adao.getGoodsPageNavi(cpage);
	}
	
	public String getGoodsJoinPageNavi(int cpage) {
		return adao.getGoodsJoinPageNavi(cpage);
	}
	
	@Transactional
	public void newGoodsInsert(GoodsDTO gdto, String realPath, MultipartFile[] file) {

		adao.goodsInsertInto(gdto);
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
				adao.goodsPicInsert(new GoodsPicDTO(0, g_num, e_num, gp_sysname));
			}
		}
		
		gdto.setG_num(g_num);
		adao.goodsInsertOption1(gdto);
		System.out.println(gdto.getG_num());
		adao.goodsInsertOption2(gdto);
		
	}
	
	
	public int goodsCheckDelelte (int g_num) {
		return adao.goodsCheckDelete(g_num);
	}
	
	public int goodsCheckUpdate (String g_num, String e_num) {
		return adao.goodsCheckUpdate(g_num, e_num);
	}
	
	public void adminGoodsUpdate(GoodsDTO gdto) {
		adao.adminGoodsUpdate(gdto);
	}
	
	public GoodsDTO getGoods(int g_seq) {
		return adao.getGoods(g_seq);
	}
	
	// Program Category
	
	public List<ProgramDTO> programSelectByPage(int cpage, String value){
		return adao.programSelectByPage(cpage, value);
	}
	
	public String getProgramPageNavi(int cpage) {
		return adao.getProgramPageNavi(cpage);
	}
	
	public ProgramDTO getProgram(int p_num) {
		return adao.getProgram(p_num);
	}
	
	// Payment Category
	
	public List<TotalPaymentDTO> paymentSelectUIDByPage(int cpage, String uid){
		return adao.paymentSelectUIDByPage(cpage, uid);
	}
	
	public String getPaymentUIDPageNavi(int cpage, String search) {
		return adao.getPaymentUIDPageNavi(cpage, search);
	}
	
	public List<TotalPaymentDTO> paymentSelectNameByPage(int cpage, String name){
		return adao.paymentSelectNameByPage(cpage, name);
	}
	
	public String getPaymentNamePageNavi(int cpage, String search) {
		return adao.getPaymentNamePageNavi(cpage, search);
	}
	
	public List<TotalPaymentDTO> paymentSelectByPage(int cpage){
		return adao.paymentSelectByPage(cpage);
	}
	
	public String getPaymentPageNavi(int cpage) {
		return adao.getPaymentPageNavi(cpage);
	}
	
	public AdminDTO getAdminPayDetail(String merchant_uid) {
		return adao.getAdminPayDetail(merchant_uid);
	}
	
	public AdminDTO getAdminExticketDetail(String merchant_uid) {
		return adao.getAdminExticketDetail(merchant_uid);
	}
	
	public AdminDTO getAdminProticketDetail(String merchant_uid) {
		return adao.getAdminProticketDetail(merchant_uid);
	}
	
	// Payment > Cancel
	
	public List<CancelDTO> cancelSelectByPage(int cpage){
		return adao.cancelSelectByPage(cpage);
	}
	
	public String getCancelPageNavi(int cpage) {
		return adao.getCancelPageNavi(cpage);
	}
	
	public String categoryCheck(String check) {
		return adao.categoryCheck(check);
	}
	
	public int cancelExticketUpdate(String check) {
		return adao.cancelExticketUpdate(check);
	}
	
	public int cancelGoodsUpdate(String check) {
		return adao.cancelGoodsUpdate(check);
	}
	
	public int cancelProticketUpdate(String check) {
		return adao.cancelProticketUpdate(check);
	}
	
	public int cancelPaymentCheckDelete(String check) {
		return adao.cancelPaymentCheckDelete(check);	
	}
	
	public void cancelExAfterWorks(String check) {
		adao.restoreExCountAndStock(check);
		
		int result = adao.checkUsedExPoint(check);
		
		if (result != 0) {
			adao.restoreExPoint(check);
		}
		
	}
	
	public void cancelGoodsAfterWorks(String check) {
		adao.restoreGoodsCountAndStock(check);
		
		int result = adao.checkUsedGoodsPoint(check);
		
		if (result != 0) {
			adao.restoreGoodsPoint(check);
		}
		
	}
	
	public void cancelProAfterWorks (String check)  {
		adao.restoreProCountAndStock(check);
		
		int result = adao.checkUsedProPoint(check);
		
		if(result != 0) {
			adao.restoreProPoint(check);
		}
	}

	
	// etc..
	
	public List<SalesDTO> getWeekSales(){
		return adao.getWeekSales();
	}
	
	public List<SalesDTO> getWeekCount(){
		return adao.getWeekCount();
	}
	
	public List<SalesDTO> getWeekCountGoods(){
		return adao.getWeekCountGoods();
	}
	
	public List<SalesDTO> getWeekCountExhibition(){
		return adao.getWeekCountExhibition();
	}
	
	public List<SalesDTO> getWeekCountProgram(){
		return adao.getWeekCountProgram();
	}
	
}

