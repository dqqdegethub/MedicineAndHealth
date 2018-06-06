package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;

public interface CustomerService {
	
	public Integer queryCustomer(Customer c);
	
	public Customer queryCustomerById(Integer id);
	
	public Customer customerLogin(Customer c);
	
	public int customerRegister(Customer c);
	public Integer queryByAnswer(Customer c);
	public void updatePwd(Customer c);

	List<Indent> indentConfirmQuery(int customerId);

	void indentConfirm(int customerId, int medicineId);

	List<Indent> allIndents(int customerId);
	
}
