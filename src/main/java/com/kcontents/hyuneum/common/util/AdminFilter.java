/*package com.kcontents.hyuneum.common.util;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartHttpServletRequest;


public class AdminFilter implements Filter {
	private static final int SESSION_ATTRIBUTE_USERCODE = 888;
	private static final String LOGIN_PAGE="login.jsp";
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		String url = request.getRequestURL()
				.toString()
				.substring
				(
					request.getRequestURL()
					.toString()
					.indexOf(request.getContextPath())
					+request.getContextPath().length()
				);
		boolean auth = true;
		if(url.contains("/admin/"))
		{
			HttpSession session = request.getSession();
			if(session.getAttribute("userCode")==null || (Integer)session.getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
			{
				auth=false;
				request.getRequestDispatcher("/kco/login").forward(request, response);
			}
		}
		if(auth)
		{
			chain.doFilter(request,response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}


}
*/