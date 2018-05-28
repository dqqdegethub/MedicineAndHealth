package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Cart;

public interface CartDao {
	List<Cart> queryCart(int customerId);

	int cartCount(int customerId);

}
