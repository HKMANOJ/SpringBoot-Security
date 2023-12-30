package com.example.Hotelvisitors.users;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService{

	

	private static final Logger log = LoggerFactory.getLogger(CustomUserDetailsService.class);

	@Autowired
	private UserRepository repo;
	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		 // Load user details from the repository
	    
		User user = repo.findByUser(name);
		log.info("username",name);
		if(user==null) {
			throw new UsernameNotFoundException("user name is not found");
		}


	    // Return a UserDetails object
	    return new CustomUserDetails(user.getName()
	    		,user.getPassword()
	    		,authorities());
	}
	
	private Collection<? extends GrantedAuthority> authorities(){
		return Arrays.asList(new SimpleGrantedAuthority("USER"));
	}

}
