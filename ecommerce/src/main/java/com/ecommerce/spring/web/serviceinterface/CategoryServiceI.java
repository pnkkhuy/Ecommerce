package com.ecommerce.spring.web.serviceinterface;

import java.util.List;

import com.ecommerce.spring.web.model.Category;

public interface CategoryServiceI {
	
	public List<Category> getAll();
	
	Category findOneCategoryByID(int categoryID) throws Exception;
	
	void deleteOrUndeleteCategory(int categoryID, int isActive) throws Exception;
	
	void insertCategory(Category category) throws Exception;
	
	void updateCategory(Category category) throws Exception;
	
}
