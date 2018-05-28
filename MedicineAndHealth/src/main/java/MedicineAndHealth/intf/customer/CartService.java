package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Cart;

public interface CartService {
	List<Cart> queryCart(int customerId);

	int cartCount(int customerId);

}
