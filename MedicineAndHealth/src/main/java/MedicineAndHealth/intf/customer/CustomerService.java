package MedicineAndHealth.intf.customer;

import MedicineAndHealth.entity.Customer;

public interface CustomerService {
	
	public Integer queryCustomer(Customer c);
	
	public Customer queryCustomerById(Integer id);
	
	public Customer customerLogin(Customer c);
	
	public int customerRegister(Customer c);
	public Integer queryByAnswer(Customer c);
	public void updatePwd(Customer c);
	
}
