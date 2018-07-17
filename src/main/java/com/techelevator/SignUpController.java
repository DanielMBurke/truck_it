package com.techelevator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignUpController {
	
	
	@RequestMapping(path= {"/signup"}, method=RequestMethod.GET)
	public String displaySignUpPage() {
		return "signup";
	}
	

}
