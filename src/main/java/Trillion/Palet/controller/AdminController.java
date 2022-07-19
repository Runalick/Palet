package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DTO.AdminDTO;
import Trillion.Palet.DTO.CancelDTO;
import Trillion.Palet.DTO.CouponDTO;
import Trillion.Palet.DTO.DeliveryDTO;
import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.ProgramDTO;
import Trillion.Palet.DTO.SalesDTO;
import Trillion.Palet.DTO.TotalPaymentDTO;
import Trillion.Palet.service.AdminService;
import Trillion.Palet.service.CouponService;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.GoodsService;
import Trillion.Palet.service.MemberService;
import Trillion.Palet.service.ProgramService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private MemberService mServ;
	
	@Autowired
	private ExhibitionService eServ;
	
	@Autowired
	private AdminService aServ;
	
	@Autowired
	private GoodsService gServ;
	
	@Autowired
	private ProgramService pServ;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CouponService cServ;
	
	@RequestMapping("adminMain")
	public String adminMain(Model model) {
		ExhibitionDTO edto = eServ.exhibitionBestSeller();
		GoodsDTO gdto = gServ.goodsBestSeller();
		ProgramDTO pdto = pServ.programBestSeller();
		List<SalesDTO> sdto = aServ.getWeekSales();
		List<SalesDTO> cdto = aServ.getWeekCount();
		int members = aServ.getMemberTotalCount();
		model.addAttribute("weekCount", cdto);
		model.addAttribute("weekSales", sdto);
		model.addAttribute("totalMembers", members);
		model.addAttribute("ExhibitionBestSeller", edto);
		model.addAttribute("GoodsBestSeller", gdto);
		model.addAttribute("ProgramBestSeller", pdto);
		return "/admin/adminMain";
	}
	
	// Member Category
	
	@RequestMapping("adminMembers")
	public String adminMembers(Model model, int cpage) {
		List<MemberDTO> mdto = aServ.memberSelectByPage(cpage);
		String pageNavi = aServ.getMemberPageNavi(cpage);
		model.addAttribute("list", mdto);
		model.addAttribute("navi", pageNavi);
		return "/admin/adminMembers";
	}
	
	@RequestMapping(value="adminMemberDetail", produces="test/html;charset=utf8")
	public String adminMemberDetail(Model model, String email) {
		MemberDTO mdto = mServ.getmember(email);
		List<AdminDTO> adto = aServ.getMemberPayment(email);
		DeliveryDTO ddto = aServ.getMemberAddress(email);
		model.addAttribute("ddto", ddto);
		model.addAttribute("mdto", mdto);
		model.addAttribute("adto", adto);
		
		return "/admin/adminMemberDetail";
	}
	
	@RequestMapping(value="adminMemberUpdate", produces="test/html;charset=utf8", method = RequestMethod.POST)
	public String adminMemberUpdate(MemberDTO dto) {
		
		System.out.println("Email :"+dto.getEmail()+" / Name : "+dto.getName()+" / Grade : "+dto.getGrade()+" / Point : "+dto.getPoint());
		System.out.println("Phone :"+dto.getPhone()+" / Addr1 : "+dto.getAddress1()+" / Addr2 : "+dto.getAddress2()+" / Postcode : "+dto.getPostcode());
		aServ.adminMemberModi(dto);
		
		return "redirect:adminMemberDetail?email="+dto.getEmail();
	}
	
	@ResponseBody
	@RequestMapping(value="memberCheckDelete", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int memberCheckDelete(@RequestParam(value="checkboxArr[]") List<String> checkboxArr) throws Exception {
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr) {
			checkNum = str;
			System.out.println(str);
			aServ.memberCheckDelete(checkNum);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="memberCheckUpdate", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int memberCheckUpdate(@RequestParam(value="checkboxArr2[]") List<String> checkboxArr2, String grade) throws Exception {
		System.out.println(grade);
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr2) {
			checkNum = str;
			System.out.println(str);
			
			aServ.memberCheckUpdate(checkNum, grade);
		}
		return result;
	}
	
//	@RequestMapping("adminMemberDelete")
//	public String adminMemberDelete(String email) {
//		aServ.adminMemberBan(email);
//		return "redirect:adminMembers?cpage=1";
//	}
	
	// Exhibition Category
	
	@RequestMapping("adminExhibitions")
	public String adminExhibitions() {
		return "/admin/adminExhibitions";
	}
	
	@RequestMapping(value="exhibitionsInsert", method = RequestMethod.POST, produces="test/html;charset=utf8")
	public String exhibitionsInsert(ExhibitionDTO edto, MultipartFile[] file) {
		System.out.println(edto.getE_name() +" : "+ edto.getStart_date() +" : "+ edto.getEnd_date() + " : " +edto.getE_price() + " : " + edto.getE_period());
		String realPath = session.getServletContext().getRealPath("ExhibitionPic");
		eServ.exhibitionInsert(edto, realPath, file);
		return "redirect:adminExhibitions";
	}
	
	@RequestMapping("adminExhibitionList")
	public String adminExhibitionList(Model model, int cpage, String value) {
		String orderByWord;
		
		if (value != null) {
			orderByWord = value;
			List<ExhibitionDTO> edto = aServ.exhibitionSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getExhibitionPageNavi(cpage);
			model.addAttribute("list", edto);
			model.addAttribute("navi", pageNavi);
			
			
		}else {
			orderByWord = "line";
			List<ExhibitionDTO> edto = aServ.exhibitionSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getExhibitionPageNavi(cpage);
			model.addAttribute("list", edto);
			model.addAttribute("navi", pageNavi);
						
		}
		
		return "/admin/adminExhibitionList";
	}
	
	@ResponseBody
	@RequestMapping(value="exhibitionCheckDelete", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int exhibitionCheckDelete(@RequestParam(value="checkboxArr[]") List<String> checkboxArr) throws Exception {
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr) {
			checkNum = str;
			System.out.println(str);
			int e_num = Integer.parseInt(checkNum);
			eServ.exhibitionCheckDelelte(e_num);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="exhibitionCheckUpdate", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int exhibitionCheckUpdate(@RequestParam(value="checkboxArr2[]") List<String> checkboxArr2, String e_period) throws Exception {
		System.out.println(e_period);
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr2) {
			checkNum = str;
			System.out.println(str);
			
			eServ.exhibitionCheckUpdate(checkNum, e_period);
		}
		return result;
	}
	
	@RequestMapping(value="adminExhibitionDetail", produces="test/html;charset=utf8")
	public String adminExhibitionDetail(Model model, int e_num) {
		ExhibitionDTO edto = eServ.getExhibition(e_num);

		model.addAttribute("edto", edto);
		
		return "/admin/adminExhibitionDetail";
	}
	
	@RequestMapping(value="adminExhibitionUpdate", produces="test/html;charset=utf8", method = RequestMethod.POST)
	public String adminExhibitionUpdate(ExhibitionDTO edto) {
		
		System.out.println("Email :"+edto.getE_num()+" / Name : "+edto.getE_name()+" / Start : "+edto.getStart_date()+" / End : "+edto.getEnd_date());
		System.out.println("Price :"+edto.getE_price()+" / period : "+edto.getE_period());
		
		aServ.adminExhibitionUpdate(edto);
		
		return "redirect:adminExhibitionDetail?e_num="+edto.getE_num();
	}
	
	
	
	// Goods Category 
	
	@RequestMapping("adminGoods")
	public String adminGoods(Model model) {
		List<ExhibitionDTO> edto = eServ.exhibitionSelectAll();
		model.addAttribute("list", edto);
		return "/admin/adminGoods";
	}
	
	@RequestMapping(value="goodsInsert", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String goodsInsert(GoodsDTO gdto, MultipartFile[] file) {
		String realPath = session.getServletContext().getRealPath("GoodsPic");
		gServ.goodsInsert(gdto, realPath, file);
		return "redirect:adminGoods";
	}
	
	@RequestMapping("adminGoodsList")
	public String adminGoodsList(Model model, int cpage, String value) {
		String orderByWord;
		List<ExhibitionDTO> edto = eServ.exhibitionSelectAll();
//		List<GoodsDTO> gdto = aServ.goodsSelectByPage(cpage);
		System.out.println(value);
		if (value != null) {
			orderByWord = value;
			List<GoodsDTO> gdto = aServ.goodsJoinSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getGoodsJoinPageNavi(cpage);
			model.addAttribute("exhibition", edto);
			model.addAttribute("list", gdto);
			model.addAttribute("navi", pageNavi);
			
			
		}else {
			orderByWord = "line";
			List<GoodsDTO> gdto = aServ.goodsJoinSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getGoodsJoinPageNavi(cpage);
			model.addAttribute("exhibition", edto);
			model.addAttribute("list", gdto);
			model.addAttribute("navi", pageNavi);
						
		}
		
		return "/admin/adminGoodsList";
	}
	
	
	@ResponseBody
	@RequestMapping(value="goodsCheckDelete", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int goodsCheckDelete(@RequestParam(value="checkboxArr[]") List<String> checkboxArr) throws Exception {
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr) {
			checkNum = str;
			System.out.println(str);
			int g_num = Integer.parseInt(checkNum);
			aServ.goodsCheckDelelte(g_num);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="goodsCheckUpdate", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int goodsCheckUpdate(@RequestParam(value="checkboxArr2[]") List<String> checkboxArr2, String e_num) throws Exception {
		System.out.println(e_num);
		int result = 0;
		String checkNum = "";
		
		for (String str : checkboxArr2) {
			checkNum = str;
			System.out.println(str);
			
			aServ.goodsCheckUpdate(checkNum, e_num);
		}
		return result;
	}
	
	@RequestMapping(value="adminGoodsDetail", produces="test/html;charset=utf8")
	public String adminGoodsDetail(Model model, int g_seq) {
		GoodsDTO gdto = aServ.getGoods(g_seq);

		model.addAttribute("gdto", gdto);
		
		return "/admin/adminGoodsDetail";
	}
	
	@RequestMapping(value="adminGoodsUpdate", produces="test/html;charset=utf8", method = RequestMethod.POST)
	public String adminGoodsUpdate(GoodsDTO gdto) {
		
		aServ.adminGoodsUpdate(gdto);
		
		return "redirect:adminGoodsDetail?g_num="+gdto.getG_num();
	}
	
	// Program Category
	
	@RequestMapping("adminProgram")
	public String adminProgram() {
		return "/admin/adminProgram";
	}
	
	@RequestMapping(value="programInsert", method = RequestMethod.POST, produces="test/html;charset=utf8")
	public String programInsert(ProgramDTO pdto, MultipartFile[] file) {
		
		String realPath = session.getServletContext().getRealPath("ProgramPic");
		pServ.programInsert(pdto, realPath, file);
		return "redirect:adminProgram";
	}
	
	@RequestMapping("adminProgramList")
	public String adminProgramList(Model model, int cpage, String value) {
		String orderByWord;
		
		if (value != null) {
			orderByWord = value;
			List<ProgramDTO> pdto = aServ.programSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getProgramPageNavi(cpage);
			model.addAttribute("list", pdto);
			model.addAttribute("navi", pageNavi);
			
			
		}else {
			orderByWord = "line";
			List<ProgramDTO> edto = aServ.programSelectByPage(cpage, orderByWord);
			String pageNavi = aServ.getProgramPageNavi(cpage);
			model.addAttribute("list", edto);
			model.addAttribute("navi", pageNavi);
						
		}
		
		return "/admin/adminProgramList";
	}
	
	
	// Payment Category
	
	
	@RequestMapping("adminPayment")
	public String adminPayment(Model model, int cpage, String search, String checked) {
		System.out.println(checked+"  :  "+search);
		if (checked == null) {
			List<TotalPaymentDTO> tpdto = aServ.paymentSelectByPage(cpage);
			String pageNavi = aServ.getPaymentPageNavi(cpage);
			model.addAttribute("list", tpdto);
			model.addAttribute("navi", pageNavi);
		}else {
			if (checked.equals("U")) {						
				System.out.println("UID로 분류");
				List<TotalPaymentDTO> tpdto = aServ.paymentSelectUIDByPage(cpage, search);
				String pageNavi = aServ.getPaymentUIDPageNavi(cpage, search);
				model.addAttribute("list", tpdto);
				model.addAttribute("navi", pageNavi);
			}else if (checked.equals("N")) {
				System.out.println("Name으로 분류 ");
				List<TotalPaymentDTO> tpdto = aServ.paymentSelectNameByPage(cpage, search);
				for(TotalPaymentDTO dto : tpdto) {
					System.out.println(dto.getName());
				}
				String pageNavi = aServ.getPaymentNamePageNavi(cpage, search);
				model.addAttribute("list", tpdto);
				model.addAttribute("navi", pageNavi);
			}
		}	
		
		return "/admin/adminPayment";
	}
	
//	@RequestMapping(value="adminPaymentSearch", produces="test/html;charset=utf8", method = RequestMethod.POST)
//	public String adminPaymentSearch(Model model, int cpage, int checked, String search) {
//		System.out.println(cpage +"   "+ checked + "   " + search);
//		if (checked == 1) {
//			List<TotalPaymentDTO> tpdto = aServ.paymentSelectUIDByPage(cpage, search);
//			String pageNavi = aServ.getPaymentUIDPageNavi(cpage);
//			model.addAttribute("list", tpdto);
//			model.addAttribute("navi", pageNavi);
//		}else if (checked == 2) {
//			
//			List<TotalPaymentDTO> tpdto = aServ.paymentSelectNameByPage(cpage, search);
//			String pageNavi = aServ.getPaymentNamePageNavi(cpage);
//			model.addAttribute("list", tpdto);
//			model.addAttribute("navi", pageNavi);
//		}
//		
//		return "redirect:adminPayment?cpage=1";
//	}
	
	@RequestMapping("adminPaymentDetail")
	public String adminPaymentDetail(Model model, String category, String merchant_uid) {
		
		if (category.equals("E")) {
			AdminDTO edto = aServ.getAdminExticketDetail(merchant_uid);
			model.addAttribute("dto", edto);	
		}else if (category.equals("G")) {
			AdminDTO pdto = aServ.getAdminPayDetail(merchant_uid);
			model.addAttribute("dto", pdto);		
		}else if (category.equals("P")) {
			AdminDTO cdto = aServ.getAdminProticketDetail(merchant_uid);
			model.addAttribute("dto", cdto);
		}
		
		return "/admin/adminPaymentDetail";
	}
	
	// cancel Page
	
	@RequestMapping("adminCancelPayment")
	public String adminCancelPayment(Model model, int cpage) {
		List<CancelDTO> dto = aServ.cancelSelectByPage(cpage);
		String pageNavi = aServ.getCancelPageNavi(cpage);
		model.addAttribute("list", dto);
		model.addAttribute("navi", pageNavi);
		
		return "/admin/adminCancelPayment";

	}
	
	@ResponseBody
	@RequestMapping(value="cancelPaymentCheckDelete", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public int cancelPaymentCheckDelete(@RequestParam(value="checkboxArr[]") List<String> checkboxArr2) throws Exception {

		int result = 0;
		String check = "";
		
		for (String str : checkboxArr2) {
			check = str;
			System.out.println(str);
			String category = aServ.categoryCheck(check);
			
			if(category.equals("E")) {
				// update exhibition 
				// AC로 업데이트 
				aServ.cancelExticketUpdate(check);
				// 세일즈 카운트 복구
				aServ.cancelExAfterWorks(check);
			}else if (category.equals("G")) {
				// update goods(payment)
				// AC로 업데이트 
				aServ.cancelGoodsUpdate(check);
				// 세일즈 카운트, 재고 복구
				aServ.cancelGoodsAfterWorks(check); 
			}else if (category.equals("P")) {
				aServ.cancelProticketUpdate(check);
				// 세일즈 카운트 복구
				aServ.cancelProAfterWorks(check);
			}
			
			// cancel table delete
			aServ.cancelPaymentCheckDelete(check);
			
		}
		return result;
	}
	
	// Coupon page
	
	@RequestMapping("adminCoupon")
	public String adminCoupon(Model model,int cpage) throws Exception {
		
		List<CouponDTO> list = cServ.selectbypage(cpage);
		String navi = cServ.getCouponPageNavi(cpage);
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		return "/admin/adminCoupon";
	}
	
	
	
}
