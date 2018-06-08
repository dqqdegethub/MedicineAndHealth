package MedicineAndHealth.intf.staff;

import java.util.List;  

import MedicineAndHealth.entity.Message;
import MedicineAndHealth.entity.Ordercheck;
import MedicineAndHealth.entity.Staff;

public interface StaffService { 

	Integer queryStaffExist(Staff request);

	Staff login(Staff request); 

	Integer staffLoginStatus(Staff request);

	Integer orderNum(Integer staffId);

	Integer queryStaffPwd(Staff request);

	void updateStaffPassword(Staff request);

	Staff searchStaffInfo(Integer staffId);

	void updateStaffInfo(Staff request);

	Integer getstaffId();

	void staffInsert(Staff staff);

	String queryStaffByNameAndId(Staff request);

	Integer querySecretProblem(Staff request);

	List<Ordercheck> queryOrder(Integer medicineId);

	String getPackagecode(Integer companyId);

	void updateOrderBySer(Ordercheck request);

	List<Ordercheck> queryPurchase();

	void updatePurchase(Ordercheck request);

	List<Ordercheck> queryPurchaseInfo(Integer medicineId,Integer staffId);

	List<Ordercheck> inventorySearch(String medicineName);

	List<Message> queryMessage();

	List<Message> queryMessDetail(Integer customerId);

	void updateMessDetail(Message request);

}
