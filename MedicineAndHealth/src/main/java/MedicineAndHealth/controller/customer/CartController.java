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
		List<Cart> cartList = cartService.queryCart(customerId.intValue());
		int cartCount = cartList.size();
		double coupon = cartService.queryCoupon(customerId);
		ModelAndView mv = new ModelAndView("/customer/cartPage");
		mv.addObject("cartCount", cartCount);
		mv.addObject("cartList", cartList);
		mv.addObject("coupon", coupon);
		return mv;
	}
		
	@RequestMapping(value = "/cartPage",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> cartPage(HttpEntity<Cart>httpEntity,HttpSession session){
		BaseResponse response = new BaseResponse();
		Cart cartList = httpEntity.getBody();
		
		int customerId = (Integer)session.getAttribute("customerId");
		for(Cart cart : cartList.getCartList()){
			cartService.insertIndent(customerId, cart.getMedicineId(), cart.getCount());
			cartService.deleteCart(customerId, cart.getMedicineId());
		}
		response.setObj(null);
		response.setCode(1);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);		
	}
	
	@RequestMapping(value = "/deleteCart",method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> deleteCart(HttpEntity<Cart>httpEntity,HttpSession session){
		BaseResponse response = new BaseResponse();
		Cart medicineId = httpEntity.getBody();
		
		int customerId = (Integer)session.getAttribute("customerId");
		cartService.deleteCart(customerId, medicineId.getMedicineId());
		response.setObj(null);
		response.setCode(1);
		
		MultiValueMap<String, String> header = new HttpHeaders();
		header.set("Access-Control-Allow-Origin", "*");
		header.set("Access-Control-Request-Method", "post");
		return new ResponseEntity<BaseResponse>(response, header, HttpStatus.OK);		
	}
}
