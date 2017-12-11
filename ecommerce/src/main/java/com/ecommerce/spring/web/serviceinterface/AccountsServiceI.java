package com.ecommerce.spring.web.serviceinterface;

import java.io.IOException;
import java.util.List;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.ecommerce.spring.web.model.Account;

public interface AccountsServiceI {
	
	List<Account> getAll();
	
	Account findByEmail(final String email) throws UsernameNotFoundException;
	
	String getFullNameByEmail(final String email);
	
	byte[] getImageByEmail(final String email);
	
	List<Account> getAccountsRoles();
	
	void insertAccount(Account account) throws Exception;
	
	Account updateAccount(Account account) throws IOException;
	

}
