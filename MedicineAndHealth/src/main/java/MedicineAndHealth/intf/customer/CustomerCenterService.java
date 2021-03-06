package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;

public interface CustomerCenterService {
	List<Indent> indentConfirmQuery(int customerId);

	void indentConfirm(int customerId, int medicineId);

	List<Indent> allIndents(int customerId);

	boolean passwordCheck(String password, int customerId);

	void passwordChange(int customerId, String password);

	Customer customerDetails(int customerId);

	void informationModify(int customerId, String userName, String telephone, String address);

}
