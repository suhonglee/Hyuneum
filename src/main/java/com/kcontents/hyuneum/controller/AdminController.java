package com.kcontents.hyuneum.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kcontents.hyuneum.domain.Admin;
import com.kcontents.hyuneum.service.AdminService;

@Controller
@RequestMapping(value={"/kco"})
public class AdminController {
	@Autowired
	public AdminService adminService;
	private static final int SESSION_ATTRIBUTE_USERCODE = 888;
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String showList(HttpServletRequest request
			,HttpSession session)
	{
		return "admin/list";
	}
	
	@RequestMapping(value="/",method = RequestMethod.POST)
	public String insert(HttpServletRequest request
			,@ModelAttribute("admin") Admin admin
			,HttpSession session)
	{
		adminService.postAdmin(admin);
		return "admin/list";
	}
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String check(HttpServletRequest request
			,@ModelAttribute("admin") Admin admin
			,HttpSession session
			,HttpServletResponse response)
	{
		if(admin.getPassword()!=null)
		{
			if(adminService.getAdmin(admin)!=null)
			{
				session.setAttribute("userCode", SESSION_ATTRIBUTE_USERCODE);
			} 
			else 
			{
				request.setAttribute("incorrect", true);
				return "admin/login";
			}
		}
		return "admin/list";
	}
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request
			,HttpSession session)
	{
		return "admin/login";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request
			,HttpSession session)
	{
		session.invalidate();
		return "home";
	}
}
