package com.example.Hotelvisitors.validation;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Validation {
	
	@NotEmpty(message = "not empty")
	@Size(min = 3,max = 8,message = "enter in between the range")
	private String name;
	
	@Size(min = 8,message =  "enter in between the range")
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$")
	private String password;
	public Validation(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
