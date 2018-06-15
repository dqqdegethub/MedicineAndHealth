package MedicineAndHealth.controller.home;  

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
import MedicineAndHealth.entity.Cart;
import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.intf.home.DrugInfoService;

@Controller
@RequestMapping("/home")
public class ViewDrugController { 
	@Autowired
	DrugInfoService drugInfoService;
	
	@RequestMapping(value="/viewDrug/{medicineId}",method=RequestMethod.GET)
	public ModelAndView showViewDrugPage(@PathVariable Integer medicineId){
		ModelAndView mv = new ModelAndView("home/viewDrug");
		DrugInformation drugInformation=drugInfoService.queryDrugInformation(medicineId.intValue());
		mv.addObject("drugInformation",drugInformation);
		return mv;
	}
	
	@RequestMapping(value="/viewDrug",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse> viewDrug(HttpEntity<Cart>httpEntity,HttpSession session){
		BaseResponse response=new BaseResponse();
		Cart cartdrug=httpEntity.getBody();
		int customerId=(Integer)session.getAttribute("userId");
		
		if(drugInfoService.queryDrugNumber(customerId, cartdrug.getMedicineId())<1) {
			drugInfoService.insertCart(customerId,cartdrug.getMedicineId(), cartdrug.getCount());
		}
		else {
			drugInfoService.updateCart(customerId, cartdrug.getMedicineId(), cartdrug.getCount());
		}
		response.setCode(1);
		response.setObj(null);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
