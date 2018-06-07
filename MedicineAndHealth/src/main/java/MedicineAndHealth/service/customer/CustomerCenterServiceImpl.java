package MedicineAndHealth.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Indent;
import MedicineAndHealth.intf.customer.CustomerCenterDao;
import MedicineAndHealth.intf.customer.CustomerCenterService;

@Service
public class CustomerCenterServiceImpl implements CustomerCenterService {

	@Autowired
	CustomerCenterDao ccDao;
	
	@Override
	public List<Indent> indentConfirmQuery(int customerId){
		return ccDao.indentConfirmQuery(customerId);
	}
	
	@Override
	public void indentConfirm(int customerId,int medicineId){
		ccDao.indentConfirm(customerId, medicineId);
	}
	
	@Override
	public List<Indent> allIndents(int customerId){
		return ccDao.allIndents(customerId);
	}
}