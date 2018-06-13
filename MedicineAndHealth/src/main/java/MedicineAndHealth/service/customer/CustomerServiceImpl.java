package MedicineAndHealth.service.customer;

import java.sql.Date;
import java.text.SimpleDateFormat;

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
	public void insertMess(Integer customerId) {
		cusDao.insertMess(customerId);
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
			return 0;
		}
		else{
			if(queryCustomerPro(customerId).getAnswer().equals("无")) {
				return 1;
			}
			else return 2;
		}
	}
//	@Override
//	public void insertPro(Message request){
//		long l=System.currentTimeMillis();
//		Date date=new Date(l);
//		SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
//		String time=sdf.format(date);
//		cusDao.insertPro(request.getCustomerId(), request.getProblem(), time);
//	}
	@Override
	public void updatePro(Message request){
		long l=System.currentTimeMillis();
		Date date=new Date(l);
		SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
		String time=sdf.format(date);
		cusDao.updatePro(request.getCustomerId(), request.getProblem(),time,request.getAnswer());
	}
	
	@Override
	public Integer queryCusId(String customerName) {
		return cusDao.queryCusId(customerName);
	}
}
