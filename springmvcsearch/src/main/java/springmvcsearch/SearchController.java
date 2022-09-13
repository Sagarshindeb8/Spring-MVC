package springmvcsearch;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {
	
	//@PathVariable demo
/*
	@RequestMapping("/user/{userId}")
	public String getUserDetail(@PathVariable("userId") int userId)
	{
		//Number format exception demo.
		System.out.println(userId);	
		return "home";
	}
*/
	
	
	@RequestMapping("/home")
	public String home()
	{
		System.out.println("Going to home view.");
		
		//For Null pointer exception demo.
		//String str = null;
		//System.out.println(str.length());
		return "home";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query)
	{
		String url = "https://www.google.com/search?q=" + query;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		
		//use of redirect	If the search box is blank then redirect to the same search box home page	.
		if(query.isBlank())
		{
			redirectView.setUrl("http://localhost:8080/springmvcsearch/home");
			return redirectView;
		}
		
		return redirectView;
	}
	
	//Handing exception in spring mvc 
	//Note: These methods below are handling exceptions of this controller class only.
	//To handle exceptions of all the controllers, create separate class (eg, MyExceptionHandler) and define all the exception handler methods inside it.
/*
 	//Method 1: combined exception.
	@ExceptionHandler({NullPointerException.class,NumberFormatException.class})
	public String exceptionHandler1()
	{
		return "null_page";
	}
*/
	
	//Method 2: separate exception.
/*
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR) //sets the status code
	@ExceptionHandler({NullPointerException.class})
	public String exceptionHandler2(Model m)
	{
		m.addAttribute("msg", "Null pointer exception haas occured!");
		return "null_page";
	}
	
	@ExceptionHandler({NumberFormatException.class})
	public String exceptionHandler3(Model m)
	{
		m.addAttribute("msg", "Number format exception haas occured!");
		return "null_page";
	}	
	
	//Generic exception handler.
	@ExceptionHandler(value = Exception.class)
	public String exceptionHandlerGeneric(Model m)
	{
		m.addAttribute("msg", "Exception haas occured!");
		return "null_page";
	}	
*/	
	
}
