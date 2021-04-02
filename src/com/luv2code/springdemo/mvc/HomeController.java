package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String showPage() {
		System.out.println("Returning to main menu");
		return "main-menu";
	}
	
	@RequestMapping("/showLocations") 
	public String showLocations() {
		return "locations-list";
	}
	
	@RequestMapping("/showRestaurants") 
	public String showRestaurants() {
		return "restaurant-list";
	}

}
