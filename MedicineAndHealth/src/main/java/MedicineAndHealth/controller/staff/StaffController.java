package MedicineAndHealth.controller.staff;

import java.util.List; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MedicineAndHealth.entity.BaseResponse;
import MedicineAndHealth.entity.Message;
import MedicineAndHealth.entity.Ordercheck;
import MedicineAndHealth.entity.Staff;
import MedicineAndHealth.intf.staff.StaffService;

@Controller
@RequestMapping("/staff")
public class StaffController {
//	private final Logger LOG=LoggerFactory.getLogger(StaffLoginController.class);
	
	@Autowired
	StaffService staffService; 
	
	@RequestMapping(value="/staffLogin",method=RequestMethod.GET)
	public String showHomepage(){
		return "staff/staffLogin";
	}
	
	@RequestMapping(value="/staffLogin",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>login(HttpEntity<Staff>httpEntity,HttpSession session){
//		LOG.info("interface login() start");
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		Staff staff=staffService.login(request);
		switch (staffService.staffLoginStatus(request)) {
		case 0:
			response.setCode(0);
			Integer re1=1; 
			response.setObj(re1);
			break;
		case 1: 
			response.setCode(0);
			Integer re2=2; 
			response.setObj(re2);
			break;
		case 2:
			session.setAttribute("staffId", staff.getStaffId());
			session.setAttribute("staffName", staff.getStaffName());
			session.setAttribute("partment", staff.getPartment());
			response.setCode(1);
			response.setObj(staff);
			break;
		}
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/staffLogout",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>logout(HttpSession session){
		BaseResponse response=new BaseResponse();

		session.removeAttribute("staffId");
		session.removeAttribute("staffName");
		session.removeAttribute("partment");
			
		response.setCode(1);
		response.setObj(null);
		
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/supportStaffIndex",method=RequestMethod.GET)
	public ModelAndView showsupportStaffIndex(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		Integer count=staffService.orderNum(staffId);
		ModelAndView mv=new ModelAndView("/staff/supportStaffIndex");
		mv.addObject("orderNum", count);
		return mv;
	}
	
	@RequestMapping(value="/buyerStaffIndex",method=RequestMethod.GET)
	public ModelAndView showbuyerStaffIndex(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/buyerStaffIndex");
		return mv;
	}
	
	@RequestMapping(value="/changePassword",method=RequestMethod.GET)
	public ModelAndView showChangePassword(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/changePassword");
		return mv;
	}
	
	@RequestMapping(value="/changePassword",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>changePassword(HttpEntity<Staff>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		Integer count=staffService.queryStaffPwd(request);
		if(count==0){
			response.setCode(0);
		}
		else{
			staffService.updateStaffPassword(request);
			response.setCode(1); 
		}
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/personalInformation",method=RequestMethod.GET)
	public ModelAndView showPersonalInformation(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		Staff staff=staffService.searchStaffInfo(staffId);
		ModelAndView mv=new ModelAndView("/staff/personalInformation");
		mv.addObject("staff", staff);
		return mv;
	}
	
	@RequestMapping(value="/personalInformation",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>changeInfo(HttpEntity<Staff>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		staffService.updateStaffInfo(request);
		response.setCode(1); 
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/staffRegister",method=RequestMethod.GET)
	public ModelAndView showStaffRegister(){
		Integer staffId=staffService.getstaffId();
		ModelAndView mv=new ModelAndView("/staff/staffRegister");
		mv.addObject("staffId", staffId);
		return mv;
	}
	
	@RequestMapping(value="/staffRegister",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>staffInsert(HttpEntity<Staff>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		staffService.staffInsert(request);
		response.setCode(1);
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/forgetPassword",method=RequestMethod.GET)
	public ModelAndView showforgetPassword(){
		ModelAndView mv=new ModelAndView("/staff/forgetPassword");
		return mv;
	}
	
	@RequestMapping(value="/forgetPassword",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>getPassword(HttpEntity<Staff>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		if(request.getStep()==1){
			String problem=staffService.queryStaffByNameAndId(request);
			if(problem==null){
				response.setCode(0);
			}
			else{
				response.setCode(1);
				response.setObj(problem);
			}
		}
		if(request.getStep()==2){
			Integer count=staffService.querySecretProblem(request);
			if(count==1){
				response.setCode(1);
			}
			else{
				response.setCode(0);
			}
		}
		if(request.getStep()==3){
			staffService.updateStaffPassword(request);
			response.setCode(1);
		}
		
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/ensureOrder",method=RequestMethod.GET)
	public ModelAndView showOrder(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/ensureOrder");
		return mv;
	}
	
	@RequestMapping(value = "/ensureOrder",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> orderManage(HttpEntity<Ordercheck>httpEntity,HttpSession session){
		BaseResponse response = new BaseResponse();
		Ordercheck or=httpEntity.getBody();
		or.setMedicineId(null);
		List<Ordercheck> orders=staffService.queryOrder(or.getMedicineId());
		response.setCode(1);
		response.setObj(orders);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);
	}
	
	@RequestMapping(value="/orderDetails/{medicineId}",method=RequestMethod.GET)
	public ModelAndView showOrderDeatils(@PathVariable Integer medicineId,HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv = new ModelAndView();
		List<Ordercheck> orders=staffService.queryOrder(medicineId);
		mv.setViewName("staff/orderDetails");
		mv.addObject("order",orders);
		mv.addObject("medicineId",medicineId);
		return mv;
	}
	
	@RequestMapping(value="/orderDetails/{medicineId}",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse> updateOrder(HttpEntity<Ordercheck>httpEntity,@PathVariable Integer medicineId,HttpSession session){
		BaseResponse response=new BaseResponse();
		Ordercheck or=httpEntity.getBody();
		if(or.getStep()==1){
			response.setCode(1);
			String packageCode=staffService.getPackagecode(or.getCompanyId());
			response.setObj(packageCode);
		}
		if(or.getStep()==2){
			staffService.updateOrderBySer(or);
			response.setCode(1);
		}
		
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/ensurePurchase",method=RequestMethod.GET)
	public ModelAndView showPurchase(HttpSession session) {
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/ensurePurchase");
		return mv;
	}
	
	@RequestMapping(value = "/ensurePurchase",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> purchaseManage(HttpEntity<Ordercheck>httpEntity,HttpSession session){
		BaseResponse response = new BaseResponse();
		List<Ordercheck> purchases=staffService.queryPurchase();
		response.setCode(1);
		response.setObj(purchases);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);
	}
	
	@RequestMapping(value="/purchaseDetails/{medicineId}",method=RequestMethod.GET)
	public ModelAndView showPurchaseDeatils(@PathVariable Integer medicineId,HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv = new ModelAndView("/staff/purchaseDetails");
		List<Ordercheck> purchaseInfo=staffService.queryPurchaseInfo(medicineId,staffId);
		mv.setViewName("staff/purchaseDetails");
		mv.addObject("purchaseInfo",purchaseInfo);
		mv.addObject("medicineId",medicineId);
		mv.addObject("staffId",staffId);
		return mv;
	}
	
	@RequestMapping(value="/purchaseDetails/{medicineId}",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse> updatePurchase(HttpEntity<Ordercheck>httpEntity,@PathVariable Integer medicineId,HttpSession session){
		BaseResponse response=new BaseResponse();
		Ordercheck or=httpEntity.getBody();
		staffService.updatePurchase(or);
		response.setCode(1);
		
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/inventorySearch",method=RequestMethod.GET)
	public ModelAndView showInventory(HttpSession session) {
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/inventorySearch");
		return mv;
	}
	
	@RequestMapping(value="/inventorySearch",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse> inventoryManage(HttpEntity<Ordercheck>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Ordercheck or=httpEntity.getBody();
		String medicineName="%"+or.getMedicineName()+"%";
		List<Ordercheck> inventorysearch=staffService.inventorySearch(medicineName);
		response.setCode(1);
		response.setObj(inventorysearch);
				
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
	
	@RequestMapping(value="/messageList",method=RequestMethod.GET)
	public ModelAndView showMessageList(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		ModelAndView mv=new ModelAndView("/staff/messageList");
		return mv;
	}
	
	@RequestMapping(value = "/messageList",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> messageListManage(){
		BaseResponse response = new BaseResponse();
		List<Message> message=staffService.queryMessage();
		response.setCode(1);
		response.setObj(message);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);
	}
	
	@RequestMapping(value="/responseMessage/{customerId}",method=RequestMethod.GET)
	public ModelAndView showResponseMess(@PathVariable Integer customerId,HttpSession session) {
		Integer staffId=(Integer)session.getAttribute("staffId");
		if(staffId==null){
			return new ModelAndView("redirect:/staff/staffLogin");
		}
		List<Message>me=staffService.queryMessDetail(customerId);
		ModelAndView mv=new ModelAndView("/staff/responseMessage");
		mv.addObject("message",me);
		return mv;
	}
	
	@RequestMapping(value = "/responseMessage/{customerId}",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> responseMessage(HttpEntity<Message>httpEntity,@PathVariable Integer customerId,HttpSession session){
		BaseResponse response = new BaseResponse();
		Integer staffId=(Integer)session.getAttribute("staffId");
		Message request=httpEntity.getBody();
		request.setCustomerId(customerId);
		request.setStaffId(staffId);
		staffService.updateMessDetail(request);
		response.setCode(1);

		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*"); 
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);
	}
}
