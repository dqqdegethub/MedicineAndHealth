package MedicineAndHealth.intf.customer;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Message;

public interface CustomerService {
	
	public Integer queryCustomer(Customer c);
	
	public Customer queryCustomerById(Integer id);
	
	public Customer customerLogin(Customer c);
	
	public int customerRegister(Customer c);
	public Integer queryByAnswer(Customer c);
	public void updatePwd(Customer c);

	Message queryCustomerPro(Integer customerId);

	Integer customerProStatus(Integer customerId);

	void insertPro(Message request);

	void updatePro(Message request);

}
