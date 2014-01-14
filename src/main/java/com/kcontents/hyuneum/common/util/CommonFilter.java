package com.kcontents.hyuneum.common.util;

import java.io.IOException;
import java.util.Enumeration;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class CommonFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse response,
		FilterChain fc) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		request = scriptFilter(request);
		addCommonParams(request);
		fc.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}
	
	public static void addCommonParams(HttpServletRequest request)
	{
		String context = request.getContextPath();
		request.setAttribute("CONTEXT", context);
		if(request.getSession().getAttribute("userCode")==null)
		{
			request.getSession().setAttribute("userCode",1);
		}
	}
	
	public static HttpServletRequest scriptFilter(HttpServletRequest request)
	{
		HttpRequestWithModifyParams newRequest = new HttpRequestWithModifyParams(request);
		Enumeration<String> e = newRequest.getParameterNames();
		while(e.hasMoreElements())
		{
			String paramName = e.nextElement();
			newRequest.setParameter(paramName, checkScript(newRequest.getParameter(paramName)));
		}
		return newRequest;
	}
	
	private static String checkScript(String obj)
	{
		obj = obj.replace("<script>", "&lt;script&gt;");
		obj = obj.replace("</script>", "&lt;/script&gt;");
		return obj;
	}
}
