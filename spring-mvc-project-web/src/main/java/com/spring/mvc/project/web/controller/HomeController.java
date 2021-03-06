package com.spring.mvc.project.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class HomeController {

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String indexHtml(Model model) {
		//进入到注册的页面
		return "index";
	}

	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public String registerHtml(Model model) {
		//进入到注册的页面
		return "register";
	}

	@RequestMapping(value = "/manager.html", method = RequestMethod.GET)
	public String managerHtml(Model model) {
		return "manager";
	}

	@RequestMapping(value = "/question.html", method = RequestMethod.GET)
	public String questionHtml(Model model) {
		return "question";
	}

	@RequestMapping(value = "/suggestions.html", method = RequestMethod.GET)
	public String suggestionsHtml(Model model) {
		return "suggestions";
	}

	@RequestMapping(value = "/contact.html", method = RequestMethod.GET)
	public String contactHtml(Model model) {
		return "contact";
	}

}
