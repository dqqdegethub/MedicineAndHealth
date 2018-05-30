package MedicineAndHealth.service.staff;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Staff;
import MedicineAndHealth.intf.staff.StaffDao;
import MedicineAndHealth.intf.staff.StaffService;

@Service
public class StaffServiceImpl implements StaffService {
	@Autowired
	StaffDao staffDao;
	
	@Override
	public Integer queryStaffExist(Staff request){
		return staffDao.queryStaffExist(request.getStaffId());
	}
	
	@Override
	public Staff login(Staff request){
		String password=request.getPassword().toUpperCase();
		return staffDao.login(request.getStaffId(), password);
	}
	
	@Override 
	public Integer staffLoginStatus(Staff request){
		if(queryStaffExist(request)==0)
			return 0;
		if(login(request)==null)
			return 1;
		return 2;
	}
	
	@Override
	public Integer orderNum(Integer staffId){
		return staffDao.orderNum(staffId);
	}
	
	@Override
	public Integer queryStaffPwd(Staff request){
		String password=request.getOldPwd().toUpperCase();
		return staffDao.queryStaffPwd(request.getStaffId(), password);
	}
	
	@Override
	public void updateStudentPassword(Staff request){
		String password=request.getNewPwd().toUpperCase();
		staffDao.updateStudentPassword(request.getStaffId(), password);
	}
	
	@Override
	public Staff searchStaffInfo(Integer staffId){
		return staffDao.searchStaffInfo(staffId);
	}
	
	@Override
	public void updateStudentInfo(Staff request){
		staffDao.updateStudentInfo(request.getStaffId(), request.getPartment(),request.getPhoneNumber());
	}
}
