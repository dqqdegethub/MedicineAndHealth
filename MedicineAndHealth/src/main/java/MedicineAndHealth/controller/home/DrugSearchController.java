package MedicineAndHealth.controller.home;

import java.util.List;

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
		if(request2.getCode()==1) {//表示有输入内容 
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
		else if(request2.getCode()==0) { //表示没有输入内容 
			
		}
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);		
	}
	
	@RequestMapping(value="/drugTypeSearch/{medicineType}",method=RequestMethod.GET)
	public ModelAndView showViewDrugPage(@PathVariable Integer medicineType){
		ModelAndView mv = new ModelAndView("home/drugTypeSearch");
		String  type=Integer.toString(medicineType);
		//int one=Integer.parseInt(type.substring(0));
		int twoAndthree=Integer.parseInt(type.substring(1, 3));
		int fourAndfive=Integer.parseInt(type.substring(3, 5));
		int max = 0;
		if(twoAndthree!=0) {
			if(fourAndfive!=0) {//类别精确到最细类
				max=medicineType+10;
			}
			else {//精确到倒数第二细
				max=medicineType+1000;
			}
		}
		else {
			//精确到最粗类
			max=medicineType+100000;
		}
		List<DrugInformation> drugList=drugSearchService.getDrugByDrugType(medicineType, max);		
		mv.addObject("drugList",drugList);
		DrugInformation drugInformation=(DrugInformation)drugList.get(0);
		if(drugInformation!=null) {
			mv.addObject("nowDrugType", drugInformation.getmCatalog());
			mv.addObject("id", drugInformation.getMedicineId());
		}
		
		return mv;
	}
	

}
