package Trillion.Palet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String participation() {
		return "/event/event";
	}
	
	@RequestMapping("paint")
	public String paint() {
		return "/event/paint";
	}
	
	@ResponseBody
	@RequestMapping("send")
	public String send(DrawingDTO dto, MultipartFile file) throws Exception{
		String email = (String)session.getAttribute("loginEmail");
		dto.setEmail(email);
		
		// 게시물을 등록한 적이 있을 때
		if(eServ.isEmailExist(email)) {
			return "false";
		}
		
		String realPath = session.getServletContext().getRealPath("uplaod");
		eServ.add(dto, realPath, file);
		return "true";
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
