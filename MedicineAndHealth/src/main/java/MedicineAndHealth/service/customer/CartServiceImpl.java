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
	public int cartCount(int customerId){
		return cartDao.cartCount(customerId);
	}
	
	@Override
	public List<Cart> queryCart(int customerId){
		return  cartDao.queryCart(customerId);
	}
}
 