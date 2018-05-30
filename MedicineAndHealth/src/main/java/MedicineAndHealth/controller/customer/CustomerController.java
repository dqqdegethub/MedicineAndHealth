package MedicineAndHealth.controller.customer;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import MedicineAndHealth.entity.BaseResponse;
import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.intf.customer.CustomerService;



@Controller
@RequestMapping("/customer")
public class CustomerController {
private final Logger LOG = LoggerFactory.getLogger(CustomerController.class);
	
	@Autowired
	CustomerService cs;
	
	
	@RequestMapping(value="/customerLogin",method = RequestMethod.GET)//
	public String showLoginPage(){
		return "customer/customerLogin";
	}
	@RequestMapping(value="/customerRegister",method = RequestMethod.GET)//
	public String showRegisterPage(){
		return "customer/customerRegister";
	}
	@RequestMapping(value="/homepage",method = RequestMethod.GET)//
	public String showhomePage(){
		return "home/homePage";
	}
	@RequestMapping(value="/forgetPwd",method = RequestMethod.GET)//
	public String showForgetPwdPage(){
		return "customer/forgetPwd";
	}
	@RequestMapping(value="/customerLogin",method = RequestMethod.POST)//
	public HttpEntity<BaseResponse> login(HttpEntity<Customer> httpEntity,HttpSession session) throws UnsupportedEncodingException{
		LOG.info("interface login() start");
		Customer c=httpEntity.getBody();
		BaseResponse response=new BaseResponse();
		//int exist=cs.queryCustomer(c);
		//if(exist<1) {
		//	response.setCode(-1);//表示该用户不存在
		//}
		//else {
			Customer c2=cs.customerLogin(c);
			if(c2!=null) {
				response.setCode(1);//1表示查找该用户成功
				response.setObj(c2);
				session.setAttribute("userId",c2.getId());
				session.setAttribute("userName",c2.getUserName());
				session.setAttribute("password", c2.getPassword());
			}		
			else {
				response.setCode(0);//0表示查找该用户失败
				response.setObj(c2);
			}		
		//}
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
		
	}
	@RequestMapping(value="/customerRegister",method=RequestMethod.POST)
	public HttpEntity<BaseResponse> customerRegister(HttpEntity<Customer>httpEntity,HttpSession session){
		LOG.info("interface login() start");
		BaseResponse response=new BaseResponse();
		Customer c=httpEntity.getBody();
		//查找该用户有没有注册过
		System.out.println(c.getAnswer());
		Integer exist=cs.queryCustomer(c);
		if(exist==1) {
			//如果已存在，注册失败，同时提示已注册是否要登陆
			response.setCode(0);//0表示注册失败
			
		}
		else {
			//未注册
			int userId=cs.customerRegister(c);//
			Customer c3=cs.queryCustomerById(userId);
			response.setObj(c3);
			response.setCode(1);//1表示注册成功					
		}
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);

	}
	
	
	 
	@RequestMapping(value="/forgetPwd",method=RequestMethod.POST)
	public HttpEntity<BaseResponse> updatePwd(HttpEntity<Customer> httpEntity,HttpSession session){
		LOG.info("interface login() start");
		BaseResponse response=new BaseResponse();
		Customer c=httpEntity.getBody();
		//查找该用户有没有注册过
		Integer userId=cs.queryByAnswer(c);		
		if(userId>0) {
			cs.updatePwd(c);
			response.setCode(10);//10表示更改密码成功
			Customer c2=cs.queryCustomerById(userId);
			response.setObj(c2);
		}
		else {
			response.setCode(0);//0表示更改密码失败
		}
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
}
