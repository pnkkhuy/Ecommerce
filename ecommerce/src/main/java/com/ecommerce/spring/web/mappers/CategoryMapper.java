package com.ecommerce.spring.web.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ecommerce.spring.web.model.Category;

public interface CategoryMapper {
	
	List<Category> getAll();
	
	Category findOneCategoryByID(@Param("categoryID") int categoryID)  throws Exception;
	
	void deleteOrUndeleteCategory(@Param("categoryID") int categoryID,
									@Param("isActive") int isActive) throws Exception;
	
	void insertCategory(Category category) throws Exception;
	
	void updateCategory(Category category) throws Exception;
	
	
	
}
