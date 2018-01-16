package com.ecommerce.spring.web.admin.controller;

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

import com.ecommerce.spring.web.model.Supplier;
import com.ecommerce.spring.web.service.SuppliersService;
import com.ecommerce.spring.web.validator.SupplierFormValidator;

@Controller
public class SuppliersController {
	
	@Autowired 
	SupplierFormValidator supplierFormValidator;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(supplierFormValidator);
	}
	
	@Autowired
	SuppliersService suppliersService;
	
	@RequestMapping(value = "/admin/suppliers**", method = RequestMethod.GET)
	public String showSuppliers(Model model) {
		model.addAttribute("listSupplier", suppliersService.getAll());
		return "supplierslist.layout";
	}
	
	@RequestMapping(value = "/admin/suppliers/delete/{supplierID}&{isActive}", method = RequestMethod.GET)
	public String deleteorUndeleteSuppliers(@PathVariable("supplierID")int supplierID,
											@PathVariable("isActive")int isActive) {
		try {			
			suppliersService.deleteOrUndeleteSupplier(supplierID, isActive);
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		
		//Về lại Controller /admin/category/show
		return "redirect:/admin/suppliers";
	}		
	
	@RequestMapping(value = "/admin/suppliers/update/{supplierID}", method = RequestMethod.GET)
	public String updateSupplier(Model model, @PathVariable("supplierID")int supplierID) {
		try {
			model.addAttribute("action", "update");
			model.addAttribute("supplierForm", suppliersService.findOneSupplierByID(supplierID));
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "updatesupplier.layout";
	}
	
	@RequestMapping(value = "/admin/suppliers/updateprocess", method = RequestMethod.POST)
	public String updateSupplierProccess(@ModelAttribute("supplierForm")@Validated Supplier supplier,
											BindingResult result, Model model,
											final RedirectAttributes redirectAttributes) {
		
		//Trường hợp supplierForm kiểm tra có lỗi khi input
		// Trả về lại trang updatesupplier.layout		
		if(result.hasErrors()) {
			model.addAttribute("action", "update");
			model.addAttribute("supplierForm", supplier);
			return "updatesupplier.layout";
		}else {
			try {
				suppliersService.updateSupplier(supplier);
				redirectAttributes.addFlashAttribute("css", "success");
				redirectAttributes.addFlashAttribute("msg", "Cập nhật thông tin nhà cung cấp thành công!");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return "redirect:/admin/suppliers";
	}
	
	@RequestMapping(value = "/admin/suppliers/add**", method = RequestMethod.GET)
	public String addSupplier(Model model) {
		try {
			model.addAttribute("action", "add");
			model.addAttribute("supplierForm", new Supplier());
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "addsupplier.layout";
	}
	
	@RequestMapping(value = "/admin/suppliers/addprocess", method = RequestMethod.POST)
	public String addSupplierProccess(@ModelAttribute("supplierForm")@Validated Supplier supplier,
											BindingResult result, Model model,
											final RedirectAttributes redirectAttributes) {
		
		//Trường hợp supplierForm kiểm tra có lỗi khi input
		// Trả về lại trang add supplier.layout		
		if(result.hasErrors()) {
			model.addAttribute("action", "add");
			model.addAttribute("supplierForm", supplier);
			return "addsupplier.layout";
		}else {
			try {
				suppliersService.insertSupplier(supplier);
				redirectAttributes.addFlashAttribute("css", "success");
				redirectAttributes.addFlashAttribute("msg", "Thêm thông tin nhà cung cấp thành công!");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return "redirect:/admin/suppliers";
	}
}
