package MedicineAndHealth.controller.home;

import java.util.List;

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
import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.entity.DrugSearchRequest;
import MedicineAndHealth.intf.home.DrugSearchService;

@Controller
@RequestMapping("/home")
public class DrugSearchController {
	@Autowired
	DrugSearchService drugSearchService;
	
	@RequestMapping(value="/drugSearch",method=RequestMethod.GET)
	public ModelAndView showDrugSearch() {
		ModelAndView mv=new ModelAndView("home/drugSearch");
		return mv;
	}
	
	@RequestMapping(value="/drugSearch",method=RequestMethod.POST)
	public ResponseEntity<BaseResponse> DrugSearchPage(HttpEntity<DrugSearchRequest> request){
		BaseResponse response=new BaseResponse();
		DrugSearchRequest request2=request.getBody();
		if(request2.getCode()==1) {//表示有输入内容 但是没有type
			String medicineName=request2.getMedicineName();
			medicineName="%"+medicineName+"%";			
			List<DrugInformation> drugList=drugSearchService.getDrug(medicineName);
			if(drugList!=null) {
				response.setCode(2);//表示查找成功
				response.setObj(drugList);
			}
			else {
				response.setCode(-1);//表示查找为空
				response.setObj(null);
			}
				
			
		}
		else if(request2.getCode()==0) { //表示没有输入内容 而且没有type
			
		}
		else if(request2.getCode()==2) {//表示只有type 没有输入内容
			String drugType=request2.getMedicineType();
			//drugType="%"+drugType+"%";
			List<DrugInformation> drugList=drugSearchService.getDrugByDrugType(drugType);
			if(drugList!=null) {
				response.setCode(2);//表示查找成功
				response.setObj(drugList);
			}
			else {
				response.setCode(-1);//表示查找为空
				response.setObj(null);
			}
			
		}
		else if(request2.getCode()==3) {//表示既有输入内容又有type
			String medicineName=request2.getMedicineName();
			String medicineType=request2.getMedicineType();
			medicineName="%"+medicineName+"%";
			//medicineType="%"+medicineType+"%";
			List<DrugInformation> drugList=drugSearchService.getDrugByNameAndType(medicineName,medicineType);
			if(drugList!=null) {
				response.setCode(2);//表示查找成功
				response.setObj(drugList);
			}
			else {
				response.setCode(-1);//表示查找为空
				response.setObj(null);
			}
			
		}
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);

		
	}
	

}
