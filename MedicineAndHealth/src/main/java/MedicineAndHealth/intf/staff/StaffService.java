package MedicineAndHealth.intf.staff;

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

}
