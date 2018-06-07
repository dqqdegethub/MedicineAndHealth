package MedicineAndHealth.service.staff;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Message;
import MedicineAndHealth.entity.Ordercheck;
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
	public void updateStaffPassword(Staff request){
		String password=request.getNewPwd().toUpperCase();
		staffDao.updateStaffPassword(request.getStaffId(), password);
	}
	
	@Override
	public Staff searchStaffInfo(Integer staffId){
		return staffDao.searchStaffInfo(staffId);
	}
	
	@Override
	public void updateStaffInfo(Staff request){
		staffDao.updateStaffInfo(request.getStaffId(), request.getPartment(),request.getPhoneNumber());
	}
	
	@Override
	public Integer getstaffId(){
		return staffDao.getstaffId();
	}
	
	@Override
	public void staffInsert(Staff staff){
		String password=staff.getPassword().toUpperCase();
		staff.setPassword(password);
		staffDao.staffInsert(staff);
	}
	
	@Override
	public String queryStaffByNameAndId(Staff request){
		return staffDao.queryStaffByNameAndId(request.getStaffId(),request.getStaffName());
	}
	
	@Override
	public Integer querySecretProblem(Staff request){
		return staffDao.querySecretProblem(request.getStaffId(),request.getProblem(),request.getAnswer());
	}
	
	@Override
	public List<Ordercheck> queryOrder(Integer medicineId){
		return staffDao.queryOrder(medicineId);
	}
	
	@Override
	public List<Ordercheck> queryPurchase(){
		return staffDao.queryPurchase();
	}
		
	@Override
	public List<Ordercheck> queryPurchaseInfo(Integer medicineId,Integer staffId){
		return staffDao.queryPurchaseInfo(medicineId,staffId);
	}
	
	@Override
	public String getPackagecode(Integer companyId){
		Random r=new Random();
		int num=(int)(r.nextFloat()*100000000);
		int end=(int)(r.nextFloat()*1000);
		String packageCode=companyId.toString()+num+end;
		return packageCode;
	}
	
	@Override
	public void updateOrderBySer(Ordercheck request){
		staffDao.updateOrderBySer(request.getStaffId(),request.getCode(),request.getCompanyId(),request.getMedicineId(),request.getCustomerId());
		staffDao.updateMedicineBySer(request.getMedicineId(), request.getCount());
		Integer saveNum=staffDao.queryMedicineNum(request.getMedicineId());
		if(saveNum<=5){
			staffDao.purchaseInsert(request.getMedicineId());
		}
	}
	
	@Override
	public void updatePurchase(Ordercheck request) {
		staffDao.updateMedicine(request.getMedicineId(), request.getQuantity());
		staffDao.updatePurchase(request.getMedicineId(),request.getStaffId(),request.getDate(),request.getQuantity());
	}
	
	@Override
	public List<Ordercheck> inventorySearch(String medicineName) {
		return staffDao.inventorySearch(medicineName);
	}
	
	@Override
	public List<Message> queryMessage(){
		return staffDao.queryMessage();
	}
	
	@Override
	public List<Message> queryMessDetail(Integer customerId){
		return staffDao.queryMessDetail(customerId);
	}
	
	@Override
	public void updateMessDetail(Message request) {
		String answer=request.getAnswer();
		String re=answer.split("<p>")[1].split("<br>")[0];
		staffDao.updateMessDetail(request.getStaffId(),request.getCustomerId(),re);
	}
}
