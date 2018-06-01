package MedicineAndHealth.intf.staff;

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

}
