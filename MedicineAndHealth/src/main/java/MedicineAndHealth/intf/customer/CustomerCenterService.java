package MedicineAndHealth.intf.customer;

import java.util.List;

import MedicineAndHealth.entity.Indent;

public interface CustomerCenterService {

	List<Indent> indentConfirmQuery(int customerId);

	void indentConfirm(int customerId, int medicineId);

	List<Indent> allIndents(int customerId);

}
