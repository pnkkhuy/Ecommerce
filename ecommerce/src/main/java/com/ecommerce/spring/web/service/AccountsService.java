package com.ecommerce.spring.web.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.AccountsMapper;
import com.ecommerce.spring.web.model.Account;
import com.ecommerce.spring.web.serviceinterface.AccountsServiceI;

@Service("accountsService")
public class AccountsService implements AccountsServiceI {
	
	@Autowired(required = true)
	private AccountsMapper accountsMappers;

	@Override
	public List<Account> getAll() {
		List<Account> list = new ArrayList<Account>();
		try {
			 list = accountsMappers.getAll();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Account findByEmail(final String email) {
		Account account = accountsMappers.findByEmail(email);
		return account;
	}
	
	public String getFullNameByEmail(final String email) {
		return accountsMappers.getFullNameByEmail(email);
	}
	
	public byte[] getImageByEmail(final String email) {
		Account account = accountsMappers.getImageByEmail(email);
		return account.getImage();
	}
	
	@Override
	public List<Account> getAccountsRoles() {
		return accountsMappers.getAccountRoles();
	}

	@Override
	public void insertAccount(Account account) throws Exception {
		
		accountsMappers.insertAccount(account);
		
	}

	@Override
	public Account updateAccount(Account account) throws IOException {
		account.setImageFormToImage();
		accountsMappers.updateAccount(account);
		account = accountsMappers.findByEmail(account.getEmail());
		return account;
	}
	
}
