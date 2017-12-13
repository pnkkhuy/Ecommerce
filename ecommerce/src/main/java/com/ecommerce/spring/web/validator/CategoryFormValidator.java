package com.ecommerce.spring.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ecommerce.spring.web.model.Category;

@Component
public class CategoryFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Category.class.equals(clazz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		// TODO Auto-generated method stub		
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "categoryName", "NotEmpty.categoryForm.categoryname");
		
	}

}
