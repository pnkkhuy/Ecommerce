package com.ecommerce.spring.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ecommerce.spring.web.model.Supplier;
import com.ecommerce.utils.Utility;

@Component
public class SupplierFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		return Supplier.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		Supplier supplier = (Supplier)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "contactName", "NotEmpty.supplierForm.contactname");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.supplierForm.address");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.supplierForm.phone");
		
		//Kiểm tra nếu điện thoại nhập vào không phải là dãy số
		if(!new Utility().numberOrNot(supplier.getPhone())) {
			errors.rejectValue("phone", "Pattern.accountForm.phone");	
		}
	}
		
}
