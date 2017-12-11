package com.ecommerce.spring.web.controller;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.spring.web.model.Account;
import com.ecommerce.spring.web.model.CustomUser;
import com.ecommerce.spring.web.service.AccountsService;
import com.ecommerce.spring.web.validator.AccountFormValidator;

@Controller
public class AdminController {
	
	private final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	AccountFormValidator accountFormValidator;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(accountFormValidator);
	}
	
	@Autowired
	AccountsService accountsService;
	
	@RequestMapping(value = "/admin*", method = RequestMethod.GET)
	public String index(Model model) {
		
		logger.debug("index()");
		
		// Set full Name
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			CustomUser userDetail = (CustomUser) auth.getPrincipal();
			model.addAttribute("stringFullName", userDetail.getFullName());

		}
		
		return "adminpage.layout";
	}
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public String profile(Model model) {

		String accountEmail = "";			
		// Lấy thông tin user đăng nhập
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    accountEmail = authentication.getName();		    
		}
		
		Account account = accountsService.findByEmail(accountEmail);
		model.addAttribute("accountForm", account);
		return "profile.layout";
	}
	
	@RequestMapping(value = "/admin/updateprofile", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute("accountForm")@Validated Account account,
								BindingResult result, Model model, 
								final RedirectAttributes redirectAttributes) throws IOException  {		
		
		if(result.hasErrors()) {
			
			return "profile.layout";
			
		}else {
			
			accountsService.updateAccount(account);
			redirectAttributes.addFlashAttribute("css", "success");
			redirectAttributes.addFlashAttribute("msg", "User updated successfully!");		
			
			return "redirect:/admin/profile";
		}
	}
}
