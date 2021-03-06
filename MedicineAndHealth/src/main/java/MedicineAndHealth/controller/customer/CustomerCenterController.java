package MedicineAndHealth.controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MedicineAndHealth.entity.BaseResponse;
import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;
import MedicineAndHealth.intf.customer.CustomerCenterService;
import MedicineAndHealth.intf.customer.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerCenterController {
	@Autowired
	CustomerCenterService ccService;
	
	@Autowired
	CustomerService cs;
	
	@RequestMapping(value = "/customerCenter",method = RequestMethod.GET)
	public ModelAndView  customerCenter(HttpSession session){
		Integer customerId = (Integer)session.getAttribute("userId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		Customer customer = cs.queryCustomerById(customerId);
		ModelAndView mv = new ModelAndView("/customer/customerCenter");
		mv.addObject("customer",customer);
		mv.addObject("customerId",customerId);
		return mv;
	}
	
	@RequestMapping(value = "/indentConfirm",method = RequestMethod.GET)
	public ModelAndView  indentConfirm(HttpSession session){
		Integer customerId = (Integer)session.getAttribute("userId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		List<Indent> indents = ccService.indentConfirmQuery(customerId);
		ModelAndView mv = new ModelAndView("/customer/indentConfirm");
		mv.addObject("indents",indents);
		mv.addObject("customerId",customerId);
		return mv;
	}
	
	@RequestMapping(value="/indentConfirm",method=RequestMethod.POST)
	public HttpEntity<BaseResponse> indentConfirm(HttpEntity<Indent> httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Indent indent=httpEntity.getBody();
		Integer customerId = (Integer)session.getAttribute("userId");		
		
		ccService.indentConfirm(customerId, indent.getMedicineId());
				
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/allIndents",method = RequestMethod.GET)
	public ModelAndView  allIndents(HttpSession session){
		Integer customerId = (Integer)session.getAttribute("userId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		List<Indent> indents = ccService.allIndents(customerId);
		ModelAndView mv = new ModelAndView("/customer/allIndents");
		mv.addObject("indents",indents);
		mv.addObject("customerId",customerId);
		return mv;
	}
	
	@RequestMapping(value = "/passwordChange",method = RequestMethod.GET)
	public ModelAndView passwordChange(HttpSession session){
		Integer customerId = (Integer)session.getAttribute("userId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		Customer customer = cs.queryCustomerById(customerId);
		ModelAndView mv = new ModelAndView("/customer/passwordChange");
		mv.addObject("customer",customer);
		mv.addObject("customerId",customerId);
		return mv;
	}
	
	@RequestMapping(value="/passwordChange",method=RequestMethod.POST)
	public HttpEntity<BaseResponse> passwordChange(HttpEntity<Customer> httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Customer customer=httpEntity.getBody();
		Integer customerId = (Integer)session.getAttribute("userId");		
		
		if(ccService.passwordCheck(customer.getRequestOldPassword(), customerId)){
			ccService.passwordChange(customerId, customer.getRequestNewPassword());
			response.setCode(1);//密码正确
			response.setObj(null);
			
		}else {
			response.setCode(0);//密码错误
			response.setObj(null);
		}
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/customerDetails",method = RequestMethod.GET)
	public ModelAndView customerDetails(HttpSession session){
		Integer customerId = (Integer)session.getAttribute("userId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		Customer customer = ccService.customerDetails(customerId);
		ModelAndView mv = new ModelAndView("/customer/customerDetails");
		mv.addObject("customer",customer);
		mv.addObject("customerId",customerId);
		return mv;
	}
	
	@RequestMapping(value="/customerDetails",method=RequestMethod.POST)
	public HttpEntity<BaseResponse> customerDetails(HttpEntity<Customer> httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Customer customer=httpEntity.getBody();
		Integer customerId = (Integer)session.getAttribute("userId");		
		
		ccService.informationModify(customerId, customer.getUserName(), customer.getPhoneNumber(), customer.getAddress());
		response.setObj(null);
		response.setCode(1);
	
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");		
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
}
