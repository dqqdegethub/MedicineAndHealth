package MedicineAndHealth.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Cart;
import MedicineAndHealth.intf.customer.CartDao;
import MedicineAndHealth.intf.customer.CartService;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	CartDao cartDao;
		
	@Override
	public List<Cart> queryCart(int customerId){
		return  cartDao.queryCart(customerId);
	}
	
	@Override
	public double queryCoupon(int customerId){
		return cartDao.queryCoupon(customerId);
	}
	
	@Override
	public void deleteCart(int customerId,int medicineId){
		cartDao.deleteCart(customerId, medicineId);
	}
	
	@Override
	public void insertIndent(int customerId,int medicineId,int count){
		cartDao.insertIndent(customerId, medicineId, count);
	}
}
 