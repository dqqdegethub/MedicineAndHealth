package MedicineAndHealth.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Customer;
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
	
	@Override
	public boolean passwordCheck(String password,int customerId){
		return ccDao.passwordQuery(customerId).equals(password);
	}
	
	@Override
	public void passwordChange(int customerId,String password){
		ccDao.passwordChange(customerId, password);
	}
	
	@Override
	public Customer customerDetails(int customerId){
		return ccDao.customerDetails(customerId);
	}
}
