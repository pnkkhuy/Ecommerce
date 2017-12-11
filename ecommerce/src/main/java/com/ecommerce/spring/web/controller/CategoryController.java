package com.ecommerce.spring.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.spring.web.service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/admin/category/show", method = RequestMethod.GET)
	public String showCategory(Model model) {
		
		//Truyền danh sách Category lấy lên từ DB sang layout
		model.addAttribute("listCategory", categoryService.getAll());
		return "categorylist.layout";
	}
}
