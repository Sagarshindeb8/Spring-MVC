package com.viewToController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	
	@RequestMapping("/contact")
	public String showForm()	//This method is used to display the view
	{
		return "contact";
	}
	
/*	Method 1 - old
	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(HttpServletRequest request)
	{
		//Old method to get the data from view
		String email = request.getParameter("email");
		System.out.println("Email: " + email);
		
		return "";
	}
*/
	
	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(
			@RequestParam("email") String UserEmail, 
			@RequestParam("username") String UserName, 
			@RequestParam("password") String UserPassword, Model model)
	{
		//To display the values on console
		System.out.println("User Email: " + UserEmail);
		System.out.println("User Name: " + UserName);
		System.out.println("User Password: " + UserPassword);
		
		//To display the values in success.jsp file
		model.addAttribute("name", UserName);
		model.addAttribute("email", UserEmail);
		model.addAttribute("password", UserPassword);
		
		return "success";
	}
}
