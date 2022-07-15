package Trillion.Palet.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Trillion.Palet.DTO.DeliveryDTO;


@Repository
public class DeliveryDAO {

		@Autowired
		private SqlSession mybatis;

		public DeliveryDTO selectDefaultAddress(String email) {
			return mybatis.selectOne("Delivery.selectDefaultAddress",email);
		}

		public int insertNewDefaultAddress(DeliveryDTO dto) {
			String email = dto.getEmail();
			System.out.println(email);
			mybatis.update("Delivery.updateDefaultAddress",email);
			return mybatis.insert("Delivery.insertNewAddress",dto);
		}
		public int insertNewAddress(DeliveryDTO dto) {
			
			return mybatis.insert("Delivery.insertNewAddress",dto);
		}

		public List<DeliveryDTO> selectAllAddress(String email) {
			System.out.println("dao"+email);
			return mybatis.selectList("Delivery.selectAllAddress",email);
		}

		public DeliveryDTO selectAddress(int deliveryaddress_seq, String email) {
			Map<Object,Object> param = new HashMap<>();
			param.put("email",email);
			param.put("deliveryaddress_seq",deliveryaddress_seq);
			
			return mybatis.selectOne("Delivery.selectAddress",param);
		}

		public int delAddress(int deliveryaddress_seq) {
			return mybatis.delete("Delivery.delAddress",deliveryaddress_seq);
		}

		public int updateAddress(DeliveryDTO dto) {
			System.out.println(dto.getName());
			System.out.println(dto.getDefaultaddress());
			System.out.println(dto.getReceiver());
			System.out.println(dto.getPostcode());
			System.out.println(dto.getAddress1());
			System.out.println(dto.getAddress2());
			System.out.println(dto.getPhone());
			System.out.println(dto.getEmail());
			System.out.println(dto.getDeliveryaddress_seq());
			return mybatis.update("Delivery.updateAddress",dto);
		}

		public int ModiDefaultAddress(DeliveryDTO dto) {
			String email = dto.getEmail();
			System.out.println(email);
			mybatis.update("Delivery.updateDefaultAddress",email);
			return mybatis.update("Delivery.updateAddress",dto);
		}

		public boolean checkdefaultAddress(String email) {
			return mybatis.selectOne("Delivery.checkdefaultAddress",email);
		}

	
		
}
