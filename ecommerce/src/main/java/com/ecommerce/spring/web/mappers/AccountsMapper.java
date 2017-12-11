package com.ecommerce.spring.web.mappers;

import java.util.List;

import com.ecommerce.spring.web.model.Account;

public interface AccountsMapper {
	
	List<Account> getAll();
	
	Account findByEmail(String email);
	
	String getFullNameByEmail(String email);
	
	Account getImageByEmail(String email);
	
	List<Account> getAccountRoles();
	
	void insertAccount(Account account);
	
	void updateAccount(Account account);
}
