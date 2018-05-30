package MedicineAndHealth.intf.staff;

import MedicineAndHealth.entity.Staff;

public interface StaffDao {

	Integer queryStaffExist(Integer staffId);

	Staff login(Integer staffId, String password);

	Integer orderNum(Integer staffId);

	Integer queryStaffPwd(Integer staffId, String password);

	void updateStudentPassword(Integer staffId, String password);

	Staff searchStaffInfo(Integer staffId);

	void updateStudentInfo(Integer staffId, String partment, String phoneNumber);

}
