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

import com.ecommerce.spring.web.model.ProductForm;
import com.ecommerce.spring.web.service.CategoryService;
import com.ecommerce.spring.web.service.ProductsService;
import com.ecommerce.spring.web.service.SuppliersService;
import com.ecommerce.spring.web.validator.ProductFormValidator;

@Controller
public class ProductsController {
	
	@Autowired
	ProductFormValidator productFormValidator;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SuppliersService suppliersService;
	
	@Autowired
	ProductsService productsService;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(productFormValidator);
	}
	
	@RequestMapping(value = "/admin/products**", method = RequestMethod.GET)
	public String showProducts(Model model) {
		
		model.addAttribute("listProducts", productsService.getAll());
		return "productslist.layout";
	}
	
	@RequestMapping(value = "/admin/products/add**", method = RequestMethod.GET)
	public String addProduct(Model model) {
		
		model.addAttribute("productForm", new ProductForm());
		model.addAttribute("action", "add");
		model.addAttribute("listSuppliers", suppliersService.getAllAvailableSuppliers());
		model.addAttribute("listCategories", categoryService.getAllAvailableCategory());
		return "addproduct.layout";
	}
	
	@RequestMapping(value = "/admin/products/addprocess", method = RequestMethod.POST)
	public String addProductProcess(@ModelAttribute("productForm")@Validated ProductForm product,
										BindingResult result, Model model, 
										final RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			model.addAttribute("action", "add");
			model.addAttribute("productForm", product);
			model.addAttribute("listSuppliers", suppliersService.getAllAvailableSuppliers());
			model.addAttribute("listCategories", categoryService.getAllAvailableCategory());
			return "addproduct.layout";
		}

		else {
			try {
				productsService.insertProduct(product);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		return "redirect:/admin/products";
	}
	
	@RequestMapping(value = "/admin/products/update/{productID}", method = RequestMethod.GET)
	public String updateProduct(Model model, @PathVariable("productID")int productID) throws Exception {
		ProductForm productForm = new ProductForm(productsService.findOneProductByID(productID));
		
		model.addAttribute("productForm", productForm);
		model.addAttribute("action", "update");
		model.addAttribute("listSuppliers", suppliersService.getAllAvailableSuppliers());
		model.addAttribute("listCategories", categoryService.getAllAvailableCategory());
		return "updateproduct.layout";
	}
	
	@RequestMapping(value = "/admin/products/updateprocess")
	public String updateProductProcess(@ModelAttribute("productForm")@Validated ProductForm product, 
										BindingResult result, Model model, 
										final RedirectAttributes redirectAttributes) {
		if(result.hasErrors()) {
			model.addAttribute("action", "update");
			model.addAttribute("productForm", product);
			model.addAttribute("listSuppliers", suppliersService.getAllAvailableSuppliers());
			model.addAttribute("listCategories", categoryService.getAllAvailableCategory());
			return "updateproduct.layout";
		} else {
			try {
				productsService.updateProduct(product);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return "redirect:/admin/products";
	}
}
