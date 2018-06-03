package MedicineAndHealth.intf.staff;

import java.util.List;

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

	List<Ordercheck> queryOrder();

}
