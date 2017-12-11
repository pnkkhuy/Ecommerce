package com.ecommerce.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.CategoryMapper;
import com.ecommerce.spring.web.model.Category;
import com.ecommerce.spring.web.serviceinterface.CategoryServiceI;

@Service("categoryService")
public class CategoryService implements CategoryServiceI {

	@Autowired
	CategoryMapper categoryMapper;
	
	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return categoryMapper.getAll();
	}
		
}
