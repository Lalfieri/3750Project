package com.luv2code.springdemo.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business")
public class BusinessController {
	
	@RequestMapping("/")
	public String showPage() {
		System.out.println("Returning to main menu");
		return "main-menu";
	}

	@RequestMapping("/signin")
	public String showForm(Model theModel) {
		theModel.addAttribute("business", new Business());
		
		return "business-login";
	}
	
	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("business") Business theBusiness,
			BindingResult theBindingResult) {
		
		//comparison to accounts database happens here
		
		if(theBindingResult.hasErrors()) {
			System.out.println("Login has errors");
			return "business-login";
		} else {
			return "bullshit";
		}
		
	}
	@RequestMapping("/Continue")
	public String Continue(@ModelAttribute("business") Business theBusiness,
			BindingResult theBindingResult) {
		return "bullshit";
	}
	
	@RequestMapping("/newAccount")
	public String newAccount(@ModelAttribute("business") Business theBusiness,
			BindingResult theBindingResult) {
		return "business-newacc-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("business") Business theBusiness,
			BindingResult theBindingResult) {
		
		//compare to database
		
		if ((theBusiness.getPassWord() != null && theBusiness.getPassWord2() != null) && 
				(!theBusiness.getPassWord().equals(theBusiness.getPassWord2()))) {
			System.out.println("Passwords do not match");
			FieldError error = new FieldError("pwc", "passWord2", "Passwords must match");
			theBindingResult.addError(error);
			return "business-newacc-form";
		}
		
		if ((theBusiness.getEmail() != null && theBusiness.getEmail() != null) && 
				theBusiness.getEmail().equals("admin@gmail.com") && theBusiness.getPassWord().equals("theadmin")) {
			System.out.println("Account exists");
			FieldError error = new FieldError("email", "email", "Account already exists with this email.");
			theBindingResult.addError(error);
			theBusiness.resetInfo();
			return "business-newacc-form";
		} 
		
		if(theBindingResult.hasErrors()) {
			System.out.println("Errors detected in submission, redirecting");
			return "business-newacc-form";
		}
		else {
			return "business-acc-confirmation";
		}
		
	}
	
	//add an initbinder ... to convert trim input strings
	//remove leading and trailing whitespace
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		//setting this constructor to true means that if the string is all whitespace, trim to null
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
}
