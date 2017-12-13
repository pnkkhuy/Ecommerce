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

	@Override
	public void deleteOrUndeleteCategory(int categoryID, int isActive) throws Exception {
		try {
			categoryMapper.deleteOrUndeleteCategory(categoryID, isActive);
		} catch(Exception e) {
			throw new Exception("[deleteOrUndeleteCategory] - Category Service Error: " + e.getMessage());
		}
		
	}

	@Override
	public void insertCategory(Category category) throws Exception {
		try {
			categoryMapper.insertCategory(category);
		} catch (Exception e) {
			throw new Exception("[insertCategory] - Category Service Error: " + e.getMessage());
		}
		
	}

	@Override
	public void updateCategory(Category category) throws Exception {		
		try {
			categoryMapper.updateCategory(category);
		} catch (Exception e) {
			throw new Exception("[updateCategory] - Category Service Error: " + e.getMessage());
		}		
	}

	@Override
	public Category findOneCategoryByID(int categoryID) throws Exception {				
		try {
			return categoryMapper.findOneCategoryByID(categoryID);
		} catch (Exception e) {
			throw new Exception("[findOneCategoryByID] - Category Service Error: " + e.getMessage());
		}
	}
		
}
