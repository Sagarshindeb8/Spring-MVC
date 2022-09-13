package springmvcPractice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home()
	{
		System.out.println("This is home page.");
		return "homePage";
	}
	
	@RequestMapping("/about")
	public String about()
	{
		System.out.println("This is about page.");
		return "aboutPage";
	}
}
