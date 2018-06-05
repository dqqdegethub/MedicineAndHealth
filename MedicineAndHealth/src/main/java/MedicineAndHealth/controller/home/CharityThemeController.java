package MedicineAndHealth.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class CharityThemeController {

	@RequestMapping(value="/charityTheme",method=RequestMethod.GET)
	public String showCharityTheme(){
		return "home/charityTheme";
	}
}
