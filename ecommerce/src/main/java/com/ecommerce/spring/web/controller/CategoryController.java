package com.ecommerce.spring.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.spring.web.model.Category;
import com.ecommerce.spring.web.service.CategoryService;
import com.ecommerce.spring.web.validator.CategoryFormValidator;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryFormValidator categoryFormValidator;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(categoryFormValidator);
	}
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/admin/category**", method = RequestMethod.GET)
	public String showCategory(Model model) {
		
		//Truyền danh sách Category lấy lên từ DB sang layout
		model.addAttribute("listCategory", categoryService.getAll());
		return "categorylist.layout";
	}
	
	@RequestMapping(value = "/admin/category/delete/{categoryID}&{isActive}", method = RequestMethod.GET)
	public String deleteCategory(Model model, 
									@PathVariable("categoryID") int categoryID, 
									@PathVariable("isActive") int isActive) {
		
		try {
			categoryService.deleteOrUndeleteCategory(categoryID, isActive);
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		
		//Về lại Controller /admin/category/show
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/admin/category/update/{categoryID}", method = RequestMethod.GET)
	public String updateCategory(Model model, @PathVariable("categoryID")int categoryID) {
		try {
			Category category = categoryService.findOneCategoryByID(categoryID);
			model.addAttribute("action", "update");
			model.addAttribute("categoryForm", category);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "updatecategory.layout";
	}
	
	@RequestMapping(value = "/admin/category/updateprocess", method = RequestMethod.POST)
	public String updateCategoryProcess(@ModelAttribute("categoryForm")@Validated Category category,
										BindingResult result, Model model, 
										final RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			model.addAttribute("action", "update");
			model.addAttribute("categoryForm", category);
			return "updatecategory.layout";
		}
		else {
			
			try {			
				categoryService.updateCategory(category);
				redirectAttributes.addFlashAttribute("css", "success");
				redirectAttributes.addFlashAttribute("msg", "User updated successfully!");	
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
		
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/admin/category/add**", method = RequestMethod.GET)
	public String addCategory(Model model) {
		try {
			model.addAttribute("categoryForm", new Category());
			model.addAttribute("action", "add");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "addcategory.layout";
	}
	
	@RequestMapping(value = "/admin/category/addprocess", method = RequestMethod.POST)
	public String addeCategoryProcess(@ModelAttribute("categoryForm")@Validated Category category,
										BindingResult result, Model model, 
										final RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			model.addAttribute("action", "add");
			model.addAttribute("categoryForm", category);
			return "addcategory.layout";
		}
		
		else {
	
			try {			
				categoryService.insertCategory(category);
				redirectAttributes.addFlashAttribute("css", "success");
				redirectAttributes.addFlashAttribute("msg", "User updated successfully!");	
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
		
		
		return "redirect:/admin/category";
	}
	
}
