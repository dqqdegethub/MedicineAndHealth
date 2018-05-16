package MedicineAndHealth.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class DrugTypeController {
	@RequestMapping(value="/allDrugType",method=RequestMethod.GET)
	public String showHomepage(){
		return "home/allDrugType";
	}
}
