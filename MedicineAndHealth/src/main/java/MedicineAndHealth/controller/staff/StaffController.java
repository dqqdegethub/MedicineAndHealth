package MedicineAndHealth.controller.staff;

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
	
	@RequestMapping(value="/supportStaffIndex",method=RequestMethod.GET)
	public ModelAndView showsupportStaffIndex(HttpSession session){
		Integer staffId=(Integer)session.getAttribute("staffId");
		Integer count=staffService.orderNum(staffId);
		ModelAndView mv=new ModelAndView("/staff/supportStaffIndex");
		mv.addObject("orderNum", count);
		return mv;
	}
	
	@RequestMapping(value="/buyerStaffIndex",method=RequestMethod.GET)
	public String showbuyerStaffIndex(){
		return "staff/buyerStaffIndex";
	}
	
	@RequestMapping(value="/changePassword",method=RequestMethod.GET)
	public String showChangePassword(){
		return "staff/changePassword";
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
			staffService.updateStudentPassword(request);
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
		Staff staff=staffService.searchStaffInfo(staffId);
		ModelAndView mv=new ModelAndView("/staff/personalInformation");
		mv.addObject("staff", staff);
		return mv;
	}
	
	@RequestMapping(value="/personalInformation",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse>changeInfo(HttpEntity<Staff>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Staff request=httpEntity.getBody();
		staffService.updateStudentInfo(request);
		response.setCode(1); 
		MultiValueMap<String, String>header=new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response,header,HttpStatus.OK);
	}
}
