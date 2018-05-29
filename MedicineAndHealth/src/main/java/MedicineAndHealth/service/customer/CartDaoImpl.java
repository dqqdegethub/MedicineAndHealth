package MedicineAndHealth.service.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Cart;
import MedicineAndHealth.intf.customer.CartDao;

@Repository
public class CartDaoImpl implements CartDao {
	private static final String NAME_SPACE = "MedicineAndHealth.customer.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Cart> queryCart(int customerId){
		return  sqlSessionTemplate.selectList(NAME_SPACE + "selectCart", customerId);
	}
	
	@Override
	public double queryCoupon(int customerId){
		return sqlSessionTemplate.selectOne(NAME_SPACE + "selectCoupon", customerId);
	}
	
	@Override
	public void deleteCart(int customerId,int medicineId){
		Map<String, Object> paraMap = new HashMap<>();
		paraMap.put("customerId", customerId);
		paraMap.put("medicineId", medicineId);
		sqlSessionTemplate.delete(NAME_SPACE + "deleteCart", paraMap);
	}
	
	@Override
	public void insertIndent(int customerId,int medicineId,int count){
		Map<String, Object> paraMap = new HashMap<>();
		paraMap.put("customerId", customerId);
		paraMap.put("medicineId", medicineId);
		paraMap.put("count", count);
		sqlSessionTemplate.insert(NAME_SPACE + "insertIndent", paraMap);
	}
}
