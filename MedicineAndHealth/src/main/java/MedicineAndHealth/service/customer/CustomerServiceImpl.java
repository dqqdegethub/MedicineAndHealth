package MedicineAndHealth.service.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Customer;
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
	
}
