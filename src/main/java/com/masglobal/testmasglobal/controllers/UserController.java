package com.masglobal.testmasglobal.controllers;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.masglobal.testmasglobal.models.User;
import com.masglobal.testmasglobal.repository.UserRepositorio;

@Controller
public class UserController {

	@Autowired
	private UserRepositorio userRepositorio;

	@RequestMapping(value = "user", method = RequestMethod.GET)
	public ModelAndView User() {

		return new ModelAndView("user");
	}

	@RequestMapping(value = "configUser", method = RequestMethod.GET)
	public ModelAndView ConfigUser() {

		return new ModelAndView("configUser");
	}

	@RequestMapping(value = "getUsers", method = RequestMethod.POST)
	public @ResponseBody List<User> arr() throws ParseException {

		List<User> ArrUser = userRepositorio.findAll(); // = traerUser.getUsers();
		return ArrUser;
	}

}