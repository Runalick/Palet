package Trillion.Palet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Trillion.Palet.DAO.DrawingDAO;
import Trillion.Palet.DTO.DrawingDTO;

@Service
public class EventService {

	@Autowired
	private DrawingDAO dao;

	@Transactional
	public int add(DrawingDTO dto) throws Exception {

		/*
		 * String oriName = file.getOriginalFilename(); System.out.println(oriName);
		 * String sysName = UUID.randomUUID() + "_" + oriName; dto.setFilename(sysName);
		 * 
		 * int draw_seq = dao.add(dto);
		 * 
		 * 
		 * File realPathFile = new File(realPath); // 업로드 경로를 파일 객체로 생성하여
		 * if(!realPathFile.exists())realPathFile.mkdir(); // 경로가 존재하지 않는다면 생성
		 * 
		 * file.transferTo(new File(realPath+"/"+sysName)); if(oriName != "") {
		 * pdao.insert(new Drawing_PicDTO(0,sysName,draw_seq)); }
		 */		
		return dao.add(dto);
	}

	public List<Object> selectImage() {
		return dao.selectImage();
	}
	
	
	public List<Object> selectAll() { 
		return dao.selectAll(); 
	}
	
	
	public List<Object> selectTitle() {
		return dao.selectTitle();
	}

	public int confirmation(int draw_seq) {
		return dao.updateConfirm(draw_seq);
		
	}

	public int deleteDraw(int draw_seq) {
		return dao.deleteDraw(draw_seq);
		
	}

	public List<Object> selectConfirm(int limit) {
		return dao.selectConfirm(limit);
	}

	public int findEmail(String email) {
		return dao.findEmail(email);
	}
	
	
	
}
