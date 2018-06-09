package MedicineAndHealth.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Message;
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
	public Message queryCustomerPro(Integer customerId) {
		return cusDao.queryCustomerPro(customerId);
	}
	@Override
	public Integer customerProStatus(Integer customerId){
		if(queryCustomerPro(customerId).getProblem()==null){
			if(queryCustomerPro(customerId).getAnswer().equals('无')){
				return 0;
			}
			else return 1;
		}
		else return 2;
	}
	@Override
	public void insertPro(Message request){
		cusDao.insertPro(request.getCustomerId(), request.getProblem(), request.getTime());
	}
	@Override
	public void updatePro(Message request){
		cusDao.updatePro(request.getCustomerId(), request.getProblem(), request.getTime());
	}
}
