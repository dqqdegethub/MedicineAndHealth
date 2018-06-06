package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;

public interface CustomerDao {

	Integer queryCustomer(String name,String pwd);
	
    Customer queryCustomerById(Integer id);
    
	Customer findCustomer(String name, String pwd);
	
	int insertCustomer(Customer c);
	
	//根据username和answer查是否存在该用户，
	Integer queryCustomerByAnswer(String username,String answer);
	
	//根据userename 与新密码来 修改密码
	void updatePwd(String username,String pwd,String answer);

	List<Indent> indentConfirmQuery(int customerId);

	void indentConfirm(int customerId, int medicineId);

	List<Indent> allIndents(int customerId);


}
