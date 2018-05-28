package MedicineAndHealth.service.customer;

import java.util.List;

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
	public int cartCount(int customerId){
		return sqlSessionTemplate.selectOne(NAME_SPACE + "cartCount", customerId);
	}
	
	@Override
	public List<Cart> queryCart(int customerId){
		List<Cart> carts = sqlSessionTemplate.selectList(NAME_SPACE + "selectCart", customerId);
		return  sqlSessionTemplate.selectList(NAME_SPACE + "selectCart", customerId);
	}
}
