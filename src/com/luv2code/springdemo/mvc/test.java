package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class test {
	
	@RequestMapping("/goBack") 
	public String showTest() {
		return "main-menu";
	}
	
	
	@RequestMapping("/restaurantMenu") 
	public String showMenu() {
		return "restaurant-menu";
	}
}