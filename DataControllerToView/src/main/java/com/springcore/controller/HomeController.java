package com.springcore.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	//Sending Data from Controller to View using Model object //Method 1.
	@RequestMapping("/home")
	public String home(Model model)
	{
		System.out.println("This is Home page");
		model.addAttribute("name", "Sachin Tendulkar");
		model.addAttribute("rank", 1);
		
		List<String> cars = new ArrayList<String>();
		cars.add("Ferrari");
		cars.add("BMW");
		cars.add("Lamborghini");
		model.addAttribute("c",cars);
		
		return "home";
	}
	
	//Sending Data from Controller to View using ModelAndView object //Method 2.
	@RequestMapping("/contact")
	public ModelAndView contact()
	{
		System.out.println("This is Contact Page");
		
		//Creating model and view object
		ModelAndView modelAndView = new ModelAndView();
		
		//Setting the data
		modelAndView.addObject("name", "Virat Kohli");
		modelAndView.addObject("rank", 2);
		
		List<String> watches = new ArrayList<String>();
		watches.add("Rolex");
		watches.add("Rado");
		watches.add("On8");
		modelAndView.addObject("w", watches);
		
		//Setting the view name
		modelAndView.setViewName("contact"); //Here as it is not returning the page, we have to set the view name.
		
		return modelAndView;
	}
	
	//JSP Expression Language for displaying the view without using the getAttribute() method.
	@RequestMapping("/about")
	public String about(Model model)
	{
		System.out.println("This is About Page");
		model.addAttribute("Brand", "Hyundai");
		model.addAttribute("varient", "i20 Sportz");
		model.addAttribute("cost", 850000);
		LocalDateTime now = LocalDateTime.now();
		model.addAttribute("time", now);
		List<Integer> marks = new ArrayList<Integer>();//To display the list using ${ } we have to use jstl dependency(google jstl maven)
		marks.add(16);
		marks.add(18);
		marks.add(17);
		marks.add(15);
		model.addAttribute("m", marks);
		return "about";
	}
	
}
