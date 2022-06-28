package Trillion.Palet.DAO;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.MailDTO;

@Component
public class MailDAO {

//	@Autowired
//	private SqlSession mybatis;
	
	public MailDAO() {}
	
	public MailDTO Sendmail(MailDTO dto) {
		return dto;
	}
	
}
