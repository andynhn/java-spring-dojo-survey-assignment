package com.andy.dojosurvey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping(value="/processForm", method=RequestMethod.POST)
	public String process(@RequestParam(value="name") String name, @RequestParam(value="dojolocation") String dojolocation, @RequestParam(value="favoritelanguage") String favoritelanguage, @RequestParam(value="comment") String comment, HttpSession session) {
		session.setAttribute("name", name);
		session.setAttribute("dojolocation", dojolocation);
		session.setAttribute("favoritelanguage", favoritelanguage);
		session.setAttribute("comment", comment);
		if("Java".equals(favoritelanguage)) {
			return "redirect:/javaresult";
		} else {
			return "redirect:/result";
		}
	}
	@RequestMapping("/result")
	public String displayResults() {
		return "result";
	}
	@RequestMapping("/javaresult")
	public String javaResults() {
		return "javaresult";
	}
}
