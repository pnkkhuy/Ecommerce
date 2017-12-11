package com.ecommerce.spring.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.model.Account;
import com.ecommerce.spring.web.model.CustomUser;

@Service("myUserDetailsService")
public class MyUserDetailsServiceImpl implements UserDetailsService {

	@Autowired 
	private AccountsService accountsService;
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account account = accountsService.findByEmail(email);
		
        if(account == null){
            System.out.println("User not found");
            throw new UsernameNotFoundException("Username not found");
        }              
        
        System.out.println("User : " + account.getEmail());
        System.out.println("User Role: " + account.getRole());
        
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        
        authorities.add(new SimpleGrantedAuthority(account.getRole()));        
        
       //Encoding password
        String pw_hash = BCrypt.hashpw(account.getPassword(), BCrypt.gensalt());
        System.out.println(pw_hash);
        
        return new CustomUser(account.getEmail(), pw_hash, 
        		account.getIsActiveByBoolean(), true, true, true, authorities,
        		account.getFullName(), account.getPhone(), account.getAddress());
	}
	
}
