package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {
	
/*	//Method 1: redirect prefix
	@RequestMapping("/one")
	public String one()
	{
		System.out.println("This is one handler [/one]");
		return "redirect:/enjoy";	//used to redirect the url.
	}
*/
	
	//Method 2: RedirectView
	@RequestMapping("/one")
	public RedirectView one()
	{
		System.out.println("This is one handler [/one]");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("https://www.google.com");
		return redirectView;	//used to redirect the url.
	}
	
	//Note: We can also use HttpServletResponse to redirect.
	
	@RequestMapping("/enjoy")
	public String two()
	{
		System.out.println("This is second handler [/enjoy]");
		return "contact";	//contact is just used as eg. When /one url is hit it will redirect and display contact page.
	}
}
