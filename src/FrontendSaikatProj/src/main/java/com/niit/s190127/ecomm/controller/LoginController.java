package com.niit.s190127.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	//Method to redirect to admin/user page based on user role
	
	@RequestMapping(value="/login_success")
	public String loginSuccess(HttpSession session,Model loginModel )
	{
		String loginPage="";
		boolean loggedIn=false;
		SecurityContext secContext=SecurityContextHolder.getContext();
		Authentication authentication=secContext.getAuthentication();
		String username=authentication.getName();
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			if(role.getAuthority().equals("Admin"))
			{
				loggedIn=true;
				loginPage="AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			else
			{
				loggedIn=true;
				loginPage="UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);				
			}
		}
		return loginPage; 
	}

}

