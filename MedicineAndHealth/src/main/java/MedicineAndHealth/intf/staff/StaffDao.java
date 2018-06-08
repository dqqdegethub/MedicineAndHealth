package MedicineAndHealth.intf.staff;

import java.util.List; 

import MedicineAndHealth.entity.Message;
import MedicineAndHealth.entity.Ordercheck;
import MedicineAndHealth.entity.Staff;

public interface StaffDao {  

	Integer queryStaffExist(Integer staffId);

	Staff login(Integer staffId, String password);

	Integer orderNum(Integer staffId); 

	Integer queryStaffPwd(Integer staffId, String password);

	void updateStaffPassword(Integer staffId, String password);

	Staff searchStaffInfo(Integer staffId);

	void updateStaffInfo(Integer staffId, String partment, String phoneNumber);

	Integer getstaffId();

	void staffInsert(Staff staff);

	String queryStaffByNameAndId(Integer staffId, String staffName);

	Integer querySecretProblem(Integer staffId, String problem, String answer);

	List<Ordercheck> queryOrder(Integer medicineId);

	void updateOrderBySer(Integer staffId, String code, Integer companyId, Integer medicineId, Integer customerId);

	void updateMedicineBySer(Integer medicineId, Integer number);

	Integer queryMedicineNum(Integer medicineId);

	void purchaseInsert(Integer medicineId);

	List<Ordercheck> queryPurchase();

	void updatePurchase(Integer medicineId,Integer staffId,String date,Integer quantity);

	void updateMedicine(Integer medicineId, Integer amount);

	List<Ordercheck> queryPurchaseInfo(Integer medicineId,Integer staffId);

	List<Ordercheck> inventorySearch(String medicineName);

	List<Message> queryMessage();

	List<Message> queryMessDetail(Integer customerId);

	void updateMessDetail(Integer staffId, Integer customerId, String answer);

}
