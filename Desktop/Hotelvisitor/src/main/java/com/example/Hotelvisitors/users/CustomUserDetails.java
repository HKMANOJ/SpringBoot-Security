package com.example.Hotelvisitors.users;

import java.util.ArrayList;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;


public class CustomUserDetails implements UserDetails {

	private String name;
	private String password;
	
	public CustomUserDetails(String name, String password, Collection<? extends GrantedAuthority> getAuthorities) {
	
		this.name = name;
		this.password = password;
		this.authorities = getAuthorities;
	}

	private Collection<? extends GrantedAuthority> authorities;
	


	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		 return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return name;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
