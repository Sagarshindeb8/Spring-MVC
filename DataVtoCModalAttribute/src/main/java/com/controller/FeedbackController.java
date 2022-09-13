package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.UserFeedback;



@Controller
public class FeedbackController {
	
	@ModelAttribute 	//Use2 of @ModelAttribute
	public void CommonDataForModel(Model mobj)
	{
		mobj.addAttribute("MadeBy", "Made By: Sagar Shinde");
		mobj.addAttribute("Tech", "Tech: Spring MVC");
		System.out.println("Adding common data to model");
	}
	
	
	
	@RequestMapping("/feedback")
	public String feedback(Model m)
	{
		System.out.println("This is feedback page");
		
		m.addAttribute("Header", "Feedback Form");
		m.addAttribute("Desc", "Please share your valuable feeback");
		
		System.out.println("Creating form");
		
		return "feedback";
	}
	
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String handlerMethod(@ModelAttribute UserFeedback userfeedback, Model model) //Use1 of @ModelAttribute
	{		
		System.out.println(userfeedback);
		
		model.addAttribute("userfeedback", userfeedback);		
		model.addAttribute("Header", "Submitted Feedback");
		
		System.out.println("Form submitted!");
		
		return "success";
	}
}
