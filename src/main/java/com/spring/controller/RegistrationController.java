package com.spring.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("registration", new RegistrationBean());
		return "register";
	}

	@RequestMapping(value = "/processForm", method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("registration") RegistrationBean register,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "register";
		} else {
			return "success";
		}

	}
}
