package Trillion.Palet.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import Trillion.Palet.DTO.DrawingDTO;
import Trillion.Palet.service.EventService;


@Controller
@RequestMapping("/event/")
public class EventController {
	
	@Autowired
	private EventService eServ;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("eventPage")
	public String eventPage() {
		
		return "/event/event";
	}
	
	@RequestMapping("participation")
	public String participation(Model model) {
		String loginEmail = (String) session.getAttribute("loginEmail");
		model.addAttribute("loginEmail", loginEmail);
		
		if(loginEmail.equals("admin@palet.com")) {
			List<Object> all = eServ.selectAll();
			model.addAttribute("all", all);				
		} 
		return "/event/participation";
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
	@RequestMapping(value="send", produces="test/html;charset=utf8")
	public String send(DrawingDTO dto) throws Exception {
		////String email = (String) session.getAttribute("loginEmail");
		String email="123";
		dto.setEmail(email);
		eServ.add(dto);
		return "true";
	}
	
	@ResponseBody
	@RequestMapping(value="confirmation", produces="test/html;charset=utf8")
	public String confirmation(int draw_seq){
		eServ.confirmation(draw_seq);
		return "승인되었습니다.";
	}
	
	@ResponseBody
	@RequestMapping(value="deleteDraw", produces="test/html;charset=utf8")
	public String deleteDraw(int draw_seq){
		eServ.deleteDraw(draw_seq);
		return "삭제되었습니다.";
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
		
	}
}
