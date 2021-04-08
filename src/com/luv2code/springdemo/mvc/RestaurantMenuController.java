package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import java.util.ArrayList;

@Controller
@RequestMapping("/menu")
public class RestaurantMenuController {
	
	@RequestMapping("/showMenu")
	public String showPage() {
		
		return "hello world";
	}

	@RequestMapping("/confirmation") 
	public String showConfirmation() {
		return "confirm-order";
	}
	
	@RequestMapping("/restaurantMenu") 
	public String showMenu() {
		return "restaurant-menu";
	}
	
}
