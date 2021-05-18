package com.masglobal.testmasglobal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@GetMapping({"/","/login"})
	public String login() {
		return "loginIndex";
	}
	
	
	
	@RequestMapping(value="/index")
	public ModelAndView index(){
		
		ModelAndView model = new ModelAndView("index");
		
		return model;
	}

}
