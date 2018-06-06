package MedicineAndHealth.service.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;
import MedicineAndHealth.intf.customer.CustomerDao;
import MedicineAndHealth.intf.customer.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService {
	

	@Autowired
	CustomerDao cusDao;
	
	@Override
	public Integer queryCustomer(Customer c) {
		return cusDao.queryCustomer(c.getUserName(), c.getPassword());
	}
	
	@Override
	public Customer queryCustomerById(Integer id) {
		return cusDao.queryCustomerById(id);
	}
	
	@Override
	public Customer customerLogin(Customer c) {
		return cusDao.findCustomer(c.getUserName(),c.getPassword());
	}
	
	@Override
	public int customerRegister(Customer c) {
		return cusDao.insertCustomer(c);
	}
	@Override
	public Integer queryByAnswer(Customer c) {
		return cusDao.queryCustomerByAnswer(c.getUserName(), c.getAnswer());
	}
	@Override
	public void updatePwd(Customer c) {
		cusDao.updatePwd(c.getUserName(), c.getPassword(),c.getAnswer());
	}
	
	@Override
	public List<Indent> indentConfirmQuery(int customerId){
		return cusDao.indentConfirmQuery(customerId);
	}
	
	@Override
	public void indentConfirm(int customerId,int medicineId){
		cusDao.indentConfirm(customerId, medicineId);
	}
	
	@Override
	public List<Indent> allIndents(int customerId){
		return cusDao.allIndents(customerId);
	}
}
