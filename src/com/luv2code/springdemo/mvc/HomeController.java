package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	public HomeController () {

	}
	
	@RequestMapping("/")
	public String showPage(Model theModel) {
		System.out.println("Returning to main menu (called from home)");
		
		return "main-menu";
	}
	
	@RequestMapping(value="display-user",method={RequestMethod.GET,RequestMethod.POST})
	public String displayResultUser (Model model) {
		
		System.out.println(model.containsAttribute("user"));

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
