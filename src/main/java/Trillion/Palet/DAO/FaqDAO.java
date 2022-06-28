package Trillion.Palet.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.FaqDTO;

@Repository
public class FaqDAO {

	@Autowired
	private SqlSession mybatis;
	
	public List<FaqDTO> selectAll(){
		return mybatis.selectList("Info.selectAll");
	}
	
	public int faqDel(int faq_seq) {
		return mybatis.delete("Info.faqDel",faq_seq);
	}
	
	public int faqModi() {
		return mybatis.update("Info.faqModi");
	}

	public int faqInsert(FaqDTO dto) {
		return mybatis.insert("Info.faqInsert",dto);
	}
	
}
