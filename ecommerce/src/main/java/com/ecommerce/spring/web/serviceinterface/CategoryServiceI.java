package com.ecommerce.spring.web.serviceinterface;

import java.util.List;

import com.ecommerce.spring.web.model.Category;

public interface CategoryServiceI {
	
	public List<Category> getAll();
	
	public List<Category> getAllAvailableCategory();
	
	public Category findOneCategoryByID(int categoryID) throws Exception;
	
	public void deleteOrUndeleteCategory(int categoryID, int isActive) throws Exception;
	
	public void insertCategory(Category category) throws Exception;
	
	public void updateCategory(Category category) throws Exception;
	
}
