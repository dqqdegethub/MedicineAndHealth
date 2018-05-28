package MedicineAndHealth.controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MedicineAndHealth.entity.Cart;
import MedicineAndHealth.intf.customer.CartService;

@Controller
@RequestMapping("/customer")
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping(value = "/cartPage",method = RequestMethod.GET)
	public ModelAndView cartPage(HttpSession session){
		
		session.setAttribute("customerId",1);
		
		Integer customerId = (Integer)session.getAttribute("customerId");
		if(customerId == null){
			return new ModelAndView("redirect:/customer/customerLogin");
		}
		int cartCount = cartService.cartCount(customerId.intValue());
		List<Cart> cartList = cartService.queryCart(customerId.intValue());
		ModelAndView mv = new ModelAndView("/customer/cartPage");
		mv.addObject("cartCount", cartCount);
		mv.addObject("cartList", cartList);
		return mv;
	}
	

}
