package com.example.Hotelvisitors;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HotelvisitorApplicationTests {

	@Autowired
	private HotelRepository repo;
	
	
	@Test
	@Order(1)
	 void hotetestcteate() {
		
		Hotel hl=new Hotel();
		hl.setName("dsa");
		hl.setRoomno(1);
		hl.setCheckin("21-02-2022");
		hl.setCheckout("23-03-2022");
		hl.setId(5);
	Hotel savehtl=repo.save(hl);
		Assertions.assertNotNull(savehtl);
	}

	@Test
	
	 void update() {
		
		Hotel hl=repo.findById(2).get();
		hl.setRoomno(13);
		repo.save(hl);
		Assertions.assertNotEquals(2, repo.findById(2).get().getRoomno());
		
	}
	
	@Test
	 void testbyid() {
		Hotel hl=repo.findById(5).get();
		Assertions.assertEquals(1, hl.getRoomno());
	}
}
