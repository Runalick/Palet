package Trillion.Palet.controller;

import java.util.List;

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
		
		return "/event/event";
	}
	
	@RequestMapping("paint")
	public String paint() {
		return "/event/paint";
	}
	
	@ResponseBody
	@RequestMapping("send")
	public String send(DrawingDTO dto, MultipartFile file) throws Exception{
		//String email = (String)session.getAttribute("loginEmail");
		String email="123";
		dto.setEmail(email);

		byte[] bytes = file.getBytes();
		dto.setD_file(bytes);
		
//		ImgDTO img = new ImgDTO();
//		img.setBlob(bytes);
//		eServ.testsave(img);

		// 게시물을 등록한 적이 있을 때
		/*
		 * if(eServ.isEmailExist(email)) { return "false"; }
		 */
		
		//String realPath = session.getServletContext().getRealPath("uplaod");
		eServ.add(dto);
		return "true";
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
