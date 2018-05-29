package MedicineAndHealth.service.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.intf.home.DrugInfoDao;
import MedicineAndHealth.intf.home.DrugInfoService;

@Service
public class DrugInfoServicelmpl implements DrugInfoService{
	
	@Autowired
	DrugInfoDao drugInfoDao;
	
	@Override
	public DrugInformation queryDrugInformation(int medicineId) {
		return  drugInfoDao.queryDrugInformation(medicineId);
	}
	
	@Override
	public void insertCart(int customerId,int medicineId,int amount) {
		drugInfoDao.insertCart(customerId, medicineId, amount);
	}
}
