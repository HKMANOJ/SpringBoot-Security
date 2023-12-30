package com.example.Hotelvisitors.users;

public interface InterfacUserService {
	
	
	 User findByUser(String name);
	public User saveData(UserDTO user);

}
