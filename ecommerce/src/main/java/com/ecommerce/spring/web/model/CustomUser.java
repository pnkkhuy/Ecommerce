package com.ecommerce.spring.web.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private final String fullName;
	private final String phone;
	private final String address;
	
	public CustomUser(String username, String password, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities,
	         String fullName, String phone, String address) {

	             super(username, password, enabled, accountNonExpired,
	                credentialsNonExpired, accountNonLocked, authorities);

	             this.fullName = fullName;
	             this.phone = phone;
	             this.address = address;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFullName() {
		return fullName;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}
	
	
	   

}
