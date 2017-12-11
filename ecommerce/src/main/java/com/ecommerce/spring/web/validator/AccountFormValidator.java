package com.ecommerce.spring.web.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ecommerce.spring.web.model.Account;

@Component
public class AccountFormValidator implements Validator {

	@Autowired
	@Qualifier("emailValidator")
	EmailValidator emailValidator;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Account.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Account account = (Account) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty.accountForm.password");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newpassword", "NotEmpty.accountForm.newpassword");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmnewpassword", "NotEmpty.accountForm.confirmnewpassword");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullName", "NotEmpty.accountForm.fullname");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.accountForm.phone");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.accountForm.address");
		
		if(!emailValidator.valid(account.getEmail())) {
			errors.rejectValue("email", "Pattern.accountForm.email");
		}
		
		if(!account.getNewpassword().equals(account.getConfirmnewpassword())) {
			errors.rejectValue("newpassword", "Diff.accountForm.newpassword");
		}
		
	}

}
