package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/business")
public class BusinessController {
	
	LoginController verifier = new LoginController();
	
	@RequestMapping("/home")
	public String home() {
		System.out.println("Returning to main menu (called from business)");
		return "redirect:/";
	}
	
	@RequestMapping(value="sendBiz", method=RequestMethod.POST)
	public ModelAndView searchUser (Model model) {
		System.out.println("Sending new user to home page");
		
		ModelAndView newHome = new ModelAndView("redirect:/display-user");
		newHome.addObject("user", verifier.getUser());
	    
		return newHome;
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
		if (verifier.checkExists(theBusiness)) {
			if (!(verifier.retrieve(theBusiness.getEmail()).getPassWord().equals(theBusiness.getPassWord()))) {
			FieldError error = new FieldError("passWord", "passWord", "Password is incorrect, try again.");
			theBindingResult.addError(error);
			return "business-login";
			} else {
				System.out.println("Login successful");
				verifier.setUser(theBusiness.getEmail());
				return "redirect:/";
			}
		}
		
		FieldError error = new FieldError("email", "email", "No account with that email exists, try again.");
		theBindingResult.addError(error);
		return "business-login";
		
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
		
		if (verifier.passWordMatch(theBusiness)) {
			FieldError error = new FieldError("pwc", "passWord2", "Passwords must match");
			theBindingResult.addError(error);
			return "business-newacc-form";
		}

		if (verifier.checkExists(theBusiness)) {
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
			verifier.addAccount(theBusiness);
			verifier.setUser(theBusiness.getEmail());
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
