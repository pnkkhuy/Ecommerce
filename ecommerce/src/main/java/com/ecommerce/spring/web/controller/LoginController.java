package com.ecommerce.spring.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.spring.web.model.Account;
import com.ecommerce.spring.web.service.AccountsService;
import com.ecommerce.spring.web.validator.AccountFormValidator;

@Controller
public class LoginController {
	
	@Autowired
	AccountFormValidator accountFormValidator;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(accountFormValidator);
	}
	
	@Autowired
	AccountsService accountsService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {
		ModelAndView model = new ModelAndView("login");
		model.addObject("accountForm", new Account());
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/create_account", method = RequestMethod.POST)
	public String login(@ModelAttribute("accountForm")@Validated Account account,
						BindingResult result, Model model, 
						final RedirectAttributes redirectAttributes) throws Exception  {		

			if(result.hasErrors() && !result.hasFieldErrors("password")) {
					return "login";
			}else {
				account.setPassword(account.getNewpassword());
				accountsService.insertAccount(account);
				redirectAttributes.addFlashAttribute("msg", "Đăng ký thành công!");		

				return "redirect:/login";
			}
	}
	
	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Invalid username and password!";
		}

		return error;
	}

	
}
