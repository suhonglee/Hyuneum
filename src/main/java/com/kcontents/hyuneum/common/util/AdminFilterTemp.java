/*package com.kcontents.hyuneum.common.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kcontents.hyuneum.controller.BbsController;

public class AdminFilterTemp implements Filter{
	private static final Logger logger = LoggerFactory.getLogger(AdminFilterTemp.class);
	private static final int SESSION_ATTRIBUTE_USERCODE = 888;
	private static final String LOGIN_PAGE="login.jsp";
	private ArrayList<AuthPage> authPages;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String authParam = filterConfig.getInitParameter("authPages");
		 authPages = new ArrayList<AuthPage>();
		 String[] auths = authParam.split(",");
		 for(int i=0; i<auths.length;i++)
		 {
			authPages.add(new AuthPage(auths[i]));
		 }
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		String url = request.getRequestURL()
				.toString()
				.substring
				(
					request.getRequestURL()
					.toString()
					.indexOf(request.getContextPath())
					+request.getContextPath().length()
				);
		
		HttpServletResponse response = (HttpServletResponse)res;
		boolean auth_flag=false;
		for(int i=0;i<authPages.size();i++)
		{
			AuthPage authPage = authPages.get(i);
			
			System.out.println(url);
			 // url 비교
			if(url.equals(authPage.getUrl()))
			{ // method type 비교
				System.out.println(request.getMethod());
				if(request.getMethod().equals(authPage.getMethod()) || request.getMethod().equals("*"))
				{
					Enumeration r = request.getAttributeNames();
					while(r.hasMoreElements())
					{
						System.out.println("ATTRI :: " + r.nextElement());
						System.out.println("PARAM:::"+request.getParameter("code"));
					}
					// param 비교
					boolean isCorrect = false;
					Enumeration<String> e = request.getParameterNames();
					while(e.hasMoreElements())
					{
						String paramName = e.nextElement();
						System.out.println(paramName);
						System.out.println("AUTHPARAM :: " +authPage.getParameter(paramName));
						System.out.println("REQUESTPARAM :: " +request.getParameter(paramName));
						if(authPage.getParameter(paramName)!=null)
						{
							if( authPage.getParameter(paramName).equals(request.getParameter(paramName)))
							{
								isCorrect = true;
							}
						}
					}
					System.out.println("isCorrect :: " + isCorrect);
					if(isCorrect)
					{
						System.out.println(request.getContextPath());
						request.getRequestDispatcher("/kco/login").forward(request, response);
//						response.sendRedirect("/hyuneum/WEB-INF/views/login.jsp");
						auth_flag=true;
					}
				}
			}

		}
		for(int i=0;i<authPages.length;i++)
		{
			System.out.println(url);
			System.out.println("@@"+authPages[i]);
			if(authPages[i].endsWith("/*")) // * 적용 부분
			{
				if(url.length() >= authPages[i].length())
				{
					String subsUrl = url.substring(0,authPages[i].length()-2);
					System.out.println("* :: " + subsUrl);
				}
			}
			else if(url.equals(authPages[i])) // 똑같을 경우
			{
				if(request.getSession().getAttribute("userCode")==null 
						|| (Integer)request.getSession().getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
				{
					//처음 들어온 request의 주소에 해당하는 파일이 없을 경우 redirect를 못한다.
					//그래서 kco.jsp 파일 생성
					request.getRequestDispatcher("login").forward(request, response);
//					response.sendRedirect("/hyuneum/WEB-INF/views/login.jsp");
					auth_flag=true;
					logger.debug("IN USERCODE 888");
				}
			}
		}
		if(! auth_flag)
		{
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
*/