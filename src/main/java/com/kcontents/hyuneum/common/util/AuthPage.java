package com.kcontents.hyuneum.common.util;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;

public class AuthPage {
	private String url;
	private HashMap<String,String> parameter;
	private String method;
	public AuthPage(String info) {
		parameter = new HashMap<String,String>();
		url="";
		info = info.trim();
		
		int paramIndex = info.indexOf("?");
		int methodIndex = info.indexOf(":");
		this.url = info.substring(0,(paramIndex > -1) ? paramIndex : ((methodIndex > -1) ? methodIndex : url.length()));
		if(url.charAt(0)!='/')
		{
			url = "/"+url;
		}
		if(paramIndex>-1)
		{
			//paramIndex == "?"
			String params = info.substring(paramIndex+1, methodIndex > -1 ? methodIndex : info.length());
			String[] paramsArray = params.split("&");
			for(int i=0;i<paramsArray.length;i++)
			{
				String[] param = paramsArray[i].split("=");
				parameter.put(param[0], param[1]);
			}
		}
		if(methodIndex>-1)
		{
			//methodIndex == ":"
			String methodObject = info.substring(methodIndex+1,info.length());
			methodObject = methodObject.toLowerCase();
			if(methodObject.equals("get")) this.method = "GET";
			else if(methodObject.equals("post")) this.method = "POST";
			else if(methodObject.equals("put")) this.method="PUT";
			else if(methodObject.equals("delete")) this.method="DELETE";
			else if(methodObject.equals("*")) this.method="*";
		}
	}
	public String getUrl() {
		return url;
	}
	public String getMethod() {
		return method;
	}
	public Iterator getParameterNames()
	{
		Iterator i = parameter.keySet().iterator();
		return parameter.keySet().iterator();
	}
	public String getParameter(String key)
	{
		return parameter.get(key);
	}
}
