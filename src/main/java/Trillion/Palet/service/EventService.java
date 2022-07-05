package Trillion.Palet.service;

import java.io.File;
import java.sql.Blob;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import Trillion.Palet.DAO.DrawingDAO;
import Trillion.Palet.DAO.Drawing_PicDAO;
import Trillion.Palet.DTO.DrawingDTO;
import Trillion.Palet.DTO.Drawing_PicDTO;

@Service
public class EventService {

	@Autowired
	private DrawingDAO dao;

	@Autowired
	private Drawing_PicDAO pdao;

	@Transactional
	public void add(DrawingDTO dto, String fileName, Blob blob) throws Exception {

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
		
		int draw_seq = dao.add(dto, fileName, blob);
		System.out.println(draw_seq);
	}

	public boolean isEmailExist(String email) {
		return pdao.isEmailExist(email);
	}

	public List<DrawingDTO> selectImage() {
	
		return dao.selectImage();
	}

}