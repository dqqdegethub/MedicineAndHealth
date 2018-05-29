package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Cart;

public interface CartService {
	List<Cart> queryCart(int customerId);

	double queryCoupon(int customerId);

	void deleteCart(int customerId, int medicineId);

	void insertIndent(int customerId, int medicineId, int count);

}
