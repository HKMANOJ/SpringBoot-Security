package com.example.Hotelvisitors;

import java.util.List;



public interface HotelInterfaceService {
	
	public List<Hotel> getallvisitors();
	
	public void deleteHotelVisitor(int id);     
	
	public void saveOrUpdate(HotelDTO HotelVisit); 
	
	public Hotel getHotelVisitorsById(int id); 
	

}
