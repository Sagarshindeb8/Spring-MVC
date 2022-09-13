package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {	

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
	
}
