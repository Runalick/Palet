package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.DrawingDTO;
import Trillion.Palet.service.EventService;


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
		
		List<Object> filelist = eServ.selectAll();
		System.out.println(filelist.get(0));
		model.addAttribute("list", filelist);
		
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
	public void send(DrawingDTO dto) throws Exception{
		String email="123";
		dto.setEmail(email);
		
		eServ.testsave(dto);
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
		
	}
}
