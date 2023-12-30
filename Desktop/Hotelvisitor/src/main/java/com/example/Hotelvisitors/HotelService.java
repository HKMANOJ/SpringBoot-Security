package com.example.Hotelvisitors;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service
public class HotelService implements HotelInterfaceService{
	
	
	@Autowired
	private HotelRepository htlr;

	@Override
	public List<Hotel> getallvisitors() {
		return htlr.findAll();
	}

	@Override
	public void deleteHotelVisitor(int id) {
		htlr.deleteById(id);
		
		
	}

	@Override
	public void saveOrUpdate(HotelDTO HotelVisit) {
		Hotel h=new Hotel();
		h.setName(HotelVisit.getName());
		h.setId(HotelVisit.getId());
		h.setRoomno(HotelVisit.getRoomno());
		h.setCheckin(HotelVisit.getCheckin());
		h.setCheckout(HotelVisit.getCheckout());
		htlr.save(h);
	}

	@Override
	public Hotel getHotelVisitorsById(int id) {
		Optional<Hotel> list =htlr.findById(id);
		Hotel h=null;
		if(list.isPresent()) {
			h=list.get();
		}
		return h;
	}

}
