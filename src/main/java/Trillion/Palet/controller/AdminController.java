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

import Trillion.Palet.DTO.ExhibitionDTO;
import Trillion.Palet.DTO.GoodsDTO;
import Trillion.Palet.DTO.MemberDTO;
import Trillion.Palet.DTO.SalesDTO;
import Trillion.Palet.service.AdminService;
import Trillion.Palet.service.ExhibitionService;
import Trillion.Palet.service.GoodsService;
import Trillion.Palet.service.MemberService;

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
	private HttpSession session;
	
	@RequestMapping("adminMain")
	public String adminMain(Model model) {
		ExhibitionDTO edto = eServ.exhibitionBestSeller();
		GoodsDTO gdto = gServ.goodsBestSeller();
		List<SalesDTO> sdto = aServ.getWeekSales();
		int members = aServ.getMemberTotalCount();
		model.addAttribute("weekSales", sdto);
		model.addAttribute("totalMembers", members);
		model.addAttribute("ExhibitionBestSeller", edto);
		model.addAttribute("GoodsBestSeller", gdto);
		return "/admin/adminMain";
	}
	
	@RequestMapping("adminMembers")
	public String adminMembers(Model model, int cpage) {
		List<MemberDTO> mdto = aServ.memberSelectByPage(cpage);
		String pageNavi = aServ.getMemberPageNavi(cpage);
		model.addAttribute("list", mdto);
		model.addAttribute("navi", pageNavi);
		return "/admin/adminMembers";
	}
	
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
	public String adminExhibitionList(Model model, int cpage) {
		List<ExhibitionDTO> edto = aServ.exhibitionSelectByPage(cpage);
		String pageNavi = aServ.getExhibitionPageNavi(cpage);
		model.addAttribute("list", edto);
		model.addAttribute("navi", pageNavi);
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
	public String adminGoodsList(Model model, int cpage) {
		List<GoodsDTO> gdto = aServ.goodsSelectByPage(cpage);
		String pageNavi = aServ.getGoodsPageNavi(cpage);
		model.addAttribute("list", gdto);
		model.addAttribute("navi", pageNavi);
		return "/admin/adminGoodsList";
	}
}
