package com.ecommerce.spring.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ecommerce.spring.web.model.ProductForm;

@Component
public class ProductFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return ProductForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//Product product = (Product) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productName", "NotEmpty.productForm.productname");
	}
}
