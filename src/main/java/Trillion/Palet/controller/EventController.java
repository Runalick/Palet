package Trillion.Palet.controller;

import java.sql.Blob;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DTO.DrawingDTO;
import Trillion.Palet.service.EventService;
import Trillion.Palet.utiles.FileUtils;


@Controller
@RequestMapping("/event/")
public class EventController {
	
	@Autowired
	private EventService eServ;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("participation")
	public String participation(Model model) {
		//String realpath = "/event/event/"; 
		//model.addAttribute("realpath",realpath);
		//List<DrawingDTO> list = eServ.selectImage();
		//model.addAttribute("list", list);
		
		List<Map<String, Object>> imgByte = eServ.selectImage();
		
		for(int i=0; i<imgByte.size();i++) {
			
			String base64Url = String.valueOf(imgByte.get(i).get("d_file"));
			System.out.println(base64Url);
			model.addAttribute("base64Url", base64Url);
			
		}
		
		/*
		 * byte imageArray [] = null; 
		 * final String BASE_64_PREFIX = "data:image/png;base64,";
		 * 
		 * String base64Url = String.valueOf(imgByte.get(0)); 
		 * if(base64Url.startsWith(BASE_64_PREFIX)){ imageArray =
		 * Base64.getDecoder().decode(base64Url.substring(BASE_64_PREFIX.length()));
		 * 
		 * System.out.println("[imageArray] : " + new String(imageArray));
		 * 
		 * }
		 */
		
		
		
		return "/event/event";
	}
	
	
	@RequestMapping("paint")
	public String paint() {
		return "/event/paint";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("send") public String send(DrawingDTO dto, MultipartFile
	 * file) throws Exception{ //String email =
	 * (String)session.getAttribute("loginEmail"); String email="123";
	 * dto.setEmail(email);
	 * 
	 * byte[] bytes = file.getBytes(); dto.setD_file(bytes);
	 * 
	 * eServ.add(dto); return "true"; }
	 */
	
	@ResponseBody
	@RequestMapping("send")
	public void send(String imgDataUrl, String d_title, String painter ) throws Exception{
		System.out.println(imgDataUrl);
		System.out.println(d_title);
		System.out.println(painter);
		
		eServ.testsave(imgDataUrl, d_title, painter);
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
