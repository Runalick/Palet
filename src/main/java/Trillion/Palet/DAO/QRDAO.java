package Trillion.Palet.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Trillion.Palet.DTO.ExhibitionDTO;

@Component
public class QRDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public ExhibitionDTO getNowExhibition(int e_num) throws Exception{
		return mybatis.selectOne("Exhibition.getnowexhibion",e_num);
	}
}
