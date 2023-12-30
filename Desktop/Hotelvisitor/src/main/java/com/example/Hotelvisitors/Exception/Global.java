package com.example.Hotelvisitors.Exception;

import org.apache.catalina.connector.Response;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class Global extends ResponseEntityExceptionHandler {
	
	private static final long serialVersionUID = 1L;
	public final String PATH="Errormsg.jsp";

	
	@ResponseStatus (value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler (value = NullPointerException.class)
	public String exceptionHanderNull (Model m) {
		m.addAttribute("msg","Null Pointer exception has occured");
		return PATH;
	}

	@ResponseStatus (value= HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler (value = NumberFormatException.class)
	public String exceptionHanderNumberFormat(Model m) {
		m.addAttribute("msg","Number format exception has occured");
		return PATH;
	}

	@ResponseStatus (value= HttpStatus.NOT_FOUND)
	@ExceptionHandler (value = Exception.class)  
	public String exceptionHanderGeneric(Model m) {
		m.addAttribute("msg","Excention has orrured");
		return PATH;
	}
	
	
	
}
