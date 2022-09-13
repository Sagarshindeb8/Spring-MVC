package springmvc.controller;

import java.nio.file.Path;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
@Autowired	
private UserService userService;

	@RequestMapping("/contact")
	public String showForm() 
	{
		return "contact";
	}

	
	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model)
	{		
		System.out.println(user);
		
		//use of redirect		
		if(user.getUsername().isBlank())
		{
			return "redirect:/contact";
		}
		
		int createUser = this.userService.createUser(user);
		model.addAttribute("msg","User successfully created with id "+ createUser);
		return "success";
	}
}
